Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9232F30
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785240034; cv=none; b=oa1UwlkSzCns5AozSeyscArtyRNKJVnXW6s5AJDnT/hlq71jrTXoXgE+oBT10TwMH0ildVawCtTGZVns2VyJ1f4OjUUpnz+NFGi52lj/1l8z7gGF+WvyRIHMPvtNTMW0wCdTR3BRTnmGY5uGcrkfK7MfHsEH8ODsrJrZeU1q8xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785240034; c=relaxed/simple;
	bh=3T2Ifu7DYwqlKVEBCvx/+mxQANZzU1yeSyxqHm3KJr4=;
	h=To:Subject:From:Message-Id:Date; b=mbPheasLe4/PfNF6aurltvNbmnQZrsiTpZwKI0Byz1PitN0k0GDUSVSu6wsIs8XFGyLRTRwgXumO2Yy70Kudx19g+IZkG86z15ld8VGHuhfuPLm/A03GSXLoIdieFJ0o//oATQmf9ky7tAYlLSi9ypR9ay6LMNeXJGrHXwa2JOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxqMc7H5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxqMc7H5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13C2C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785240033;
	bh=3T2Ifu7DYwqlKVEBCvx/+mxQANZzU1yeSyxqHm3KJr4=;
	h=To:Subject:From:Date:From;
	b=NxqMc7H59KDQvg7XIQnyBvWfFDwPAB4Eef54iGFKGLPaxu1YOnkkl4pn1ObNWq6iM
	 THuv5FPjJnYJSfEfxPr/xIjCSF9cmYKaSvoIPo/cXWZbH5ZLJ5dLTHsLVx+kueTNGm
	 iovQE00aSRSbk5otyYL8yG6Un69wt34Bpmn40D9X1OJiog+4VO5JTdMSEcDGM6E1jj
	 rpkl/HD6KZcgPukifFHA1C3KCgMsPaBSD8xKwBmwYaw6vQlVsCQpX3Xy5AcLBev1la
	 4wUW1GxifCGJAdEweBPRP8VIPZL6CzE7DPP4g/C8VSMfXqKLlV8xCev2cw9dYn1ku6
	 JaDgnR2ggVYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6DC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524003368.29490.8935499227517187900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e872d6755b4ff63b43ab787b7b079440f32a871f2c12366d66cb367d9e6d526e
Date: Tue, 28 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785240033
