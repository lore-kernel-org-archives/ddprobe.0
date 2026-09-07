Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5218E2D9EDC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788748234; cv=none; b=U4dNcCAAFp/qX0ODbmkAaaw8RdgYdX6UIVBSoO5duaY0pTpIVToY0IljTY2YLWgLsMeGVXFcGW44xzT2JI7w2RySSMgCqi+hI/Fzr5iRyEnllNOQ/mEp3N/hA463oGURlf8QK6n+4d8S0GyouysMlooQ99o+EFysOLAwSyERFy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788748234; c=relaxed/simple;
	bh=SrlboooNu8Rgcc4jIINbQx75nBLd/iisdupCUcFWMsM=;
	h=To:Subject:From:Message-Id:Date; b=LtzPdgex8jgRPrbgpa+diguk6rE2gIrFNPUCIvOk09Vy4eYOSPiUOzQlKH9W/4ZRrWR72UvOeR5/N6r9gJk8WV8NFr7v1jh9AAVX02Hf/giuF+UGeE+O7FY9YVjCv9nPN9VHgcss4eyCgjCfRP/dxsYd12A7t2JuolsphGhTZ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFTJB7/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFTJB7/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E97C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788748233;
	bh=SrlboooNu8Rgcc4jIINbQx75nBLd/iisdupCUcFWMsM=;
	h=To:Subject:From:Date:From;
	b=cFTJB7/1Aw2ssMpSbROwkHm8zevlo6BfJfKuJQ6yesdvV7R+AxSe/9hA/acYxRQZA
	 vttdMgGdsaPYq1Zt6O1fm3VEOokZCN1xm5w8MCMh47lHZyL9Wf4qLG2U1X09zQThH+
	 1UxGHVd62gWgB9RJ/zBNd90WiKI6AdS0tdQPP/IQ33XPUinTSZtRWXQsHYyZ/dK1Qg
	 EzlVwj/O1Bw6I3jY9tB8YTIq7CBgnkyrmdR9AmgzR8538cLPtgoFpKBgPyvgTQwTRX
	 KShjAAPhahe86W7H7RBHWz0rdzaiMBqBfByOjkmzYSPk+6PTMu2zDZdi2eDisCjNLm
	 R/6qSSkmQe9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A5CC79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874823370.32727.7140205937668261151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a98d4a7e0cbcd5731f53fb233c579483efa078dea55abac87e38938fb528b6
Date: Mon, 07 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788748233
