Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95853466AF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784812834; cv=none; b=mYJCrtRtAL/fI8kAg3z3rOY/0OMAq945yCfrvuswKIkaFgxaeUXwhGB0WpeveH3GoUnC3/jY9IGJJ5a60AF9Lh7/CdAxsY8ewM4zo4Y+w7RLR4yob4pBsSlYm3by+wUfYhJApT6LIB9PNyGxf+da/677LIj43yzIF7MC5Vo5LZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784812834; c=relaxed/simple;
	bh=0V9PxsL+YTPCgsgTyKEH8pKB9xymDFobIHnjiC8HrYM=;
	h=To:Subject:From:Message-Id:Date; b=dq7MOaqvYCvYpf1HRvM897XG/uV2EuvzPTvDXDLZl5PLtKSc0Oi9fmUovCNTJnfgKp83FSiQY27QhSMjE23YH5svwUTxpyM7uJZ+lUC14V/oi2oHn81JNefPwfgTiBX3MzlEYlGTS72PofEklxF0ici9vgu7fJpbrPVHkjicGnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL0iuh1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL0iuh1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA00FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784812833;
	bh=0V9PxsL+YTPCgsgTyKEH8pKB9xymDFobIHnjiC8HrYM=;
	h=To:Subject:From:Date:From;
	b=QL0iuh1Yrs2Srm676R6wdMy9QUBHukZs0K8mcdu2ym0kRAUfc5LYkXGoq0DZXbBNu
	 5Vx0WkGOdSC9LpYYqPUScdZPjlSSFe1nqRAmXBWEXTonilXu0jIfZCjWfRFdpMaYGA
	 iV6/ba8qAvaiZjru71hWo9/dkYCPneF43UGyX24S0zahF82gVLnBSj56yeO2i+bI+z
	 3Qsa79B5AZcRP/RItByQMAf7UzOVI3d/DFdDZqjSs2PXM9MTfY32thEl2kNItkDo4E
	 aRoGbTL7TSg9p0jn/yUpJ+0s/i7aviNSdyuPm67DfpKnVmSj+EfZizBpdQ3gHG8H96
	 J/oYe8TGytXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13C6C531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481283371.27137.15733276542500528577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464e3e444f4deb3c2cae4f38a183c7d0841413eeffdfbc468631cad54218b000
Date: Thu, 23 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784812833
