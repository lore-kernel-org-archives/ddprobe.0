Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C249134B410
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070833; cv=none; b=E0epah3mef+nNc1I1S8F8zCvZv1bJvzcxsh5YeBAV14AAJnZDXN1Zp26tPJdIWMRWhmfefEAgCalX71EHiS7unjkPYx3EiI7PH4CygtVJ9lwU6ya8X4wTKIW7kWsytP6mKK7ageOToeisyhk71XqlmZsPOTdPPVn04r2bDNUmQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070833; c=relaxed/simple;
	bh=72271SLmZS3Vx3P4XVE9yif//CV+VcoJ8ROzcGMXwgY=;
	h=To:Subject:From:Message-Id:Date; b=vDRx2xmQnfzvADcIH03+R5UQahlSzW9BVt58CqsTOtz26JmP/xAYBtDW3encK3QPvYPydJTFt5z9l08ahcJ7DlUb8BD2Eq8IWKhnKRN2euecG5n8QusDFvwiyr+3kzj6lVOjKu/tv13Hlu0NoFWQH5YROraSKmxv9g2HYffY/NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox/1tDnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox/1tDnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766070833;
	bh=72271SLmZS3Vx3P4XVE9yif//CV+VcoJ8ROzcGMXwgY=;
	h=To:Subject:From:Date:From;
	b=Ox/1tDnHmcvHYKCVLZO4NxD/eDTiAiwRm/w9MyuP7JAdc1ADTruVcCKCBhJAJVX7N
	 dtcxmvmx5h2823AwiNofM3IjW9xL+K6Yuk03+OSMWOUBX8q+3vDiMxhx+lJ3oFb9QP
	 AhZJf5Wq3Pp050EUxuVNFoLEvw/QrD2GDjYFv8rotMmyhmRlVLP0OiDSDnpZyU0PP5
	 IitX8JxJg4QQDFu6PXZnnedaMxTiOmdLoHwdPTPBTmgkg+tprFsaZpxYNxyuQAVFEB
	 zQCB64MLYuHg+x7sIPpg7DaI9a4+u+irwN4gglt8fd2ZonwB0F9mS8yTIl39aYib2M
	 nqEEI7HxKWdEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E09D6D230
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607083359.5038.11197788882266228200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d81c9aa0d16dc5e48a66213b7534bd03bc0796ebecbb7b45ee6ef196844115
Date: Thu, 18 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766070833
