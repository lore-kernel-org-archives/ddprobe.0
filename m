Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3985A1F9ECB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766902434; cv=none; b=NFVn4lxwbVEmfUN3ppFAmmqUHGesJtWlgu5WenPxYMsqQ5CQ0QtZsp9Pmgrf7VShdxQqPEKefjck7NzvoddyogYXObp1pYQer+3/K8wM/AYqNXsQC6BRr1lasiAD4YX1gY3ub53mrVaMQ6gSd0YCj7JHm79pIy/YeD/GqBhJe8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766902434; c=relaxed/simple;
	bh=fjvp3YOCp+yTL7KSVB2LWMIWKQNwhm/84KcKyBR9h1c=;
	h=To:Subject:From:Message-Id:Date; b=VrIYPszgfO0+VJMwO64o7bEj2yd2qiZ3n0T1wZO35XR9KjJYyAgfGE4/7NnTbsnNdckUKHWITkuc/x4olaGLm3o75JjuS7Qdjrj+fX3y1+7nZn7ORRTZES6ZoJzewEORhC+/3GCmeFPWpRECA/4M3x4ll1gwYJ/H0lpUFA0jggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ0pokPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ0pokPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABF6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766902433;
	bh=fjvp3YOCp+yTL7KSVB2LWMIWKQNwhm/84KcKyBR9h1c=;
	h=To:Subject:From:Date:From;
	b=LQ0pokPhqY8uEkQW5Zckj+JRna3xH+ypQffCo6FBPBIx3DulQO/qxWKCHWV2gCgqe
	 tkAmlZ4MdihjVlUuv5al06mpz0k8FooAK/gZ0l6NGx6lF7sS0M1Yp81EDO+/sr5FOV
	 SJ4m/RBHzJiDm5B1btCvN1mIVutt2xTafS40tt9LcrMGe4I0ZtnsDIxJ5tJVZL7l52
	 jEL4OJdt3kpU8ct0iYqYFqSvWiR3Vo4Xsv5iJlJqtEmR0DOKP1JU+0xPbu8WQsCZIb
	 NAbAzvTgwxghpvafKoEwpZGrQB581Ws2grXQn7AUDrzo6m25d8+0dIvdVZRiRCdFVH
	 WDL4mmWwolNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96543D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690243358.3436.15293861312310832657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfaf41d8787e39e0015b976be0fc319b2ec1d98a685a45a7fb695e6c69ebc6a
Date: Sun, 28 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766902433
