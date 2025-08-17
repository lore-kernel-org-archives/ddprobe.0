Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651E134AB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755411594; cv=none; b=dDJP1sOJNvh4VLghSI6uCB5Ud+ysFaQJIw6h36/sOxEi0iMVU8gL9tXNIBmh1UnLEH6ozKGHtR7KpRN2GXXiSbHj1g/pGp5l6n7lysJQro/S9bU7uPwzwyaXdK8qhRGVHpDyoO/MPkNg4hGPv8ZV9szZHKccN+mVY4DQc4vSBYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755411594; c=relaxed/simple;
	bh=2P53qaVtqKruo7U0hebSkzwt8guqkkVd05Yogyedp1Y=;
	h=To:Subject:From:Message-Id:Date; b=WzbFUCUmwdP+npsh0gdtr7Dk0u7hF0IxcGRocMpZ7FGvuPBOGds/IGQ/r3Z/fnlCyV049LXVSOgj2+fLA3r4eyjhuir4xj4ngyumPRyQwVQEYhZul9fa4qp379LSbYgkOYfSnlz7aM1+Aw//4MR/NErCoa1FOTbbLJgf7DA1qac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klfVV4uZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klfVV4uZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0765C116B1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755411593;
	bh=2P53qaVtqKruo7U0hebSkzwt8guqkkVd05Yogyedp1Y=;
	h=To:Subject:From:Date:From;
	b=klfVV4uZjuAHUL2euYZQ9HiHCWZKHEKbi+8Mjv0/FnK8VfjAjtcxpxsu872l+ZLox
	 Npj5P8hJX7PxPrNr8B4GKrAqo0rcJNRZC3scztd2r7q5q7Ml4V4MWU+qpRGewSfjti
	 jmqpbrqhw9j0CKvpPqw78rS1SxbfXM7R2wA+XWsPz+57zy9iFfoNCewYonHKlC6RPF
	 3wQu/UUJnEMwEF1/Kl4fRJ+Y7Fk82FJUNX/IAANBerXPlEKX/+v+SdySvuoSYBRhNO
	 UZUAsvTsAFauvODH24tyMDMlKjvP6ELbV/k3f0pORAHqucBEdcJ9gs1AjLlHqEICna
	 oXy8xEmK+FeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F510CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541159357.4350.3071763961623313425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a44bac478ce62e3655e94b1bbcc8267838cc4675979e2e8d33d5562bfa19e
Date: Sun, 17 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755411593
