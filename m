Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A32EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720395983; cv=none; b=aB+uy7tp3+1k4Ge7uXWhRtke/kSQVJ02qxBggQgZhvloE9TPfEa9kcsmgPn3Dj5wCXklXJqYAyI4tc6uCzAL2OBm44wWIaVzjzxOHKdGPOESok3QtqOv6quao7J5DNTuEk/hhLdmrP/eacSXd5LkEv5H1osBzXWPNizVRp7JuEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720395983; c=relaxed/simple;
	bh=Mh+E7ZBhPckFaJdmMMxwOAx+gCTgn7wOGmCgiCZD+2E=;
	h=To:Subject:From:Message-Id:Date; b=ltUl5okk9+kYF/xTPsnw03OKQQCCORNOVggwjegRfOnI2GxOdIWsjVUa+VOx0uRmOz0zRpWaNrjUFsYzbCTW+2uhVHsOENVqMTegdmEbfE5AJVo31A732Fr4CLk/Ji7vb1ktsfQhvkfOaYR2gL9P5Gnia/1JuFd/+aUvVtZHwIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWuoRGc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWuoRGc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDBFC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720395982;
	bh=Mh+E7ZBhPckFaJdmMMxwOAx+gCTgn7wOGmCgiCZD+2E=;
	h=To:Subject:From:Date:From;
	b=AWuoRGc4C+VA7RoMvqL+2GQcEktI4ZLh/h8J3rwRxaFH6YmOfKbHsh1+/sN4gBvc+
	 +8BJqMvmwBMx9qu1k20iYOSi3bpzrYbWhfuJJp1mwKr4tAzTKogL1sldDm/rrkZkhe
	 nU5esVwUM3fP+tZWLAqD8UZ2+Rfi1cb+iJatyxvJcobyEUOWIdJSP+LOnn/gCOg4KF
	 UU84nB+h+QHfxisovBQsMn1AwGKV/Otp8VFpu20m6EECtmYJq4JtHzte9sRxkhqzff
	 qpdB5V+FQeKu4z3lxcYdjOpNFQbwK3LCQuoyygIsOOFq6rKxF7RB3TNkOEdMd1DTh0
	 FnnUVV5/5BH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B7FC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039598278.3815.17868219316965550571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37948859d920facdae9fc795deb7609649171beade85f27399fc4b5430aa981
Date: Sun, 07 Jul 2024 23:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720395982
