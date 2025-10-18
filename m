Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A2322B584
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760805594; cv=none; b=D2HHIDY235nNi6gwVHSzwtC/AlWKtUjyWchwBl93PNOwq1IEZ7z3wvGkDlsN8E5LpHCd0l05Tj90JnkB2lsRwahvnXCjiI9Duq3jO4HI3LG555zHIHFbLX2hX5oy2OoxfhP0VsSlh4L10BNynIjTP+dtxRAKzoQOqqy7WI7OLCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760805594; c=relaxed/simple;
	bh=Sj6s606ARJTbUM663HahcesgFcoYRHgbsrTYLARst30=;
	h=To:Subject:From:Message-Id:Date; b=UulKRtJsb/8d5GwFdsxox0Erp4tfF6U3UVAXTq44CVEfK4JPwxm7kvT8Nn+iyDvbEYml8OPvpIDaiNSt4+mIhofPtQuHXTg/jGI1wviXigO6F8KRoMYN6lKRJUBjgpfHds6pMKf2E57YGagBKTJp/X/hGLHyVFwv2/lazxwP3VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhRYEoU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhRYEoU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D08C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760805593;
	bh=Sj6s606ARJTbUM663HahcesgFcoYRHgbsrTYLARst30=;
	h=To:Subject:From:Date:From;
	b=QhRYEoU8iUlRs//AdjKvO8YrWQQIS4Nb5+x8YjY5gzHHsZsr8qBJFcFsT6xEfjKO9
	 vs26S1Db6ONC4W10kpetjtsNedsVQ7vbAh7t/6imGmn7mpyOehwc4nqZeBX5xRBDSQ
	 cu1HCBJFvPupLgjuy7eWOzZV1/WwfHlDSRG0IkhjPb4Nb3QhJSJNICR2SOouwPJVZu
	 ubH0D6+Y3FF3O/rPBLjIRweW1keTXi2s3OoCeR+e2CDwDmorvWuBsCzYCDzUEkm6B5
	 2x7wqFf6dn9ZArm4wSPOciwLFXB14kEFWmJNAOLTNrF8LS3dSnUiERI5mt7kwLwKQN
	 wo8MpgNxq64RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15DCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080559357.27914.13657058769836004412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f8657567514a9035426822fee899fb7344ac200f0fb12454b992cc0d4a7eeb
Date: Sat, 18 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760805593
