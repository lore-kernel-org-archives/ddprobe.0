Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB7C286A4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772685294; cv=none; b=maF3lcx/q9fwWqwqa7ztVvlyI0l/6fWG1/Efc5UGfkakgUjMwJb/jpnm4dQYEp3fxazYNn8QOE7LiaDsuYL9VOyaKlTIRa6pl0+tKGgCAwukFdtox5S6Qdh3Pzw50e9rz64o/3odQUF7ZBT+JoqXKi33C57u73IEWRlTXT+a7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772685294; c=relaxed/simple;
	bh=fnX5z5llOJOUcH7dL3+Dr+f526JPjgwGxbbG8xia9QM=;
	h=To:Subject:From:Message-Id:Date; b=EwJhmkINLDhoR21AA1bBbc10Xa1qWnIQa9mJiqG8goIVU4pPFffuAHxo7LD+9qewle2NoNneUJ5dB8AkiV21UXENx3PXnG5bRXRpSe6SRYNBFn0x4fyattWstghRviJzOOmFgKyzvOYF6+2XTDktVsuelB24tYcgRvpjel9Vl24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vODVDWKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vODVDWKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772685293;
	bh=fnX5z5llOJOUcH7dL3+Dr+f526JPjgwGxbbG8xia9QM=;
	h=To:Subject:From:Date:From;
	b=vODVDWKegGm5BhwPdOklUJVapWr0g7f0g3F83YFtg78nqFUaLerSo/VJqXhQUjJIP
	 p0pqNhlNNTsS5qXDYYQ8zX1JLcIcSdd0RM0aO8WTBeHocTozicpZxBjI6w9Z5iq55E
	 3zgrnsVTimaWx87Y9XY235amdfTTMWKgnL4EegKtSCQwGycSbwqxytHKoGzrFk63K5
	 4C2YQyujgCsgo1YWImN+KmqnKSxzTFmmYQC7hhxqKSK/FN8ouwh0klmLleUlHqCsbq
	 HkmO7MOiJ/YOvysWC0adlt3rVi27Z4ucInGawd8+yVjc5UbAooqdGLuMoDtyfVcsaJ
	 uS/a7khBJTbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A36EDA69A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268529358.26498.15476177729423983440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16af6e3de4f1f4319160f40d658c599fa48dee67589c75b7e20348e9f7a1ca6
Date: Thu, 05 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772685293
