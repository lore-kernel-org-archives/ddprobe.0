Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2820C5028C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737476754; cv=none; b=DpdB4206jk8c96m/oej/lcw6BN6ichBPUBn7l72qjJ/Vz6jLAutwqJ2o3ctgMEAORut0yyrSucdbPWlYjldx47ik2UGD2jD/VAJzN5Ukolv3tVzHbuOD6WKQjqvQ+Y2OBFt8LeWXlsxTT9/8o3sFLxd0COeq0MMnJKnDwczHok4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737476754; c=relaxed/simple;
	bh=fcQ/ERypPEjXeJ8zloywzslryQQzE/VkUfAczEdlTb8=;
	h=To:Subject:From:Message-Id:Date; b=b+5G2E58/uWkvhtBc3VA/ePGeD/pjD42qfZKXLSEGc7SatzQWa3wJknteEcJH1eefUQ9eDqGQcg/umJ/jjhgsKqCig9sQACj3ZtqeS2STTH4EPTyJhYIHerixyplhuHmoI3c4khqqkOskhVLFImpHydhu/6lY5KBfRrlfV9avmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWJzeDoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWJzeDoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8270C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737476753;
	bh=fcQ/ERypPEjXeJ8zloywzslryQQzE/VkUfAczEdlTb8=;
	h=To:Subject:From:Date:From;
	b=UWJzeDoY7hY1cevr+fACUyTQpFDTkVDvPvAi+dXvWxm1D+ONZPcwcoLero9YnWjni
	 Ju/+NCAJLsgVbjsyEHaL3/GmGrf23If1E7FnDRgaguOoJApKQqPt4YNhsphrwBrDRt
	 CdONCvA/7Wtyov1e0vb+JqjE+wevhjp67Q0QdN/5SiyacpIJGIZ9uOmcQ53jbmqAOz
	 7p3E7kUbb8PWHo+nm08jGXB9pz/DtPq18cUpG6fKvwL60XhhJY93OSB2kMRQTtL7mv
	 k98OqdtmMVxNeBNH70igqzk6ilnSqCp7YFafq9eGWyXDUx3s42iUMo75vmcy9fM2Lw
	 PpdI5CtHYvy2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979FBC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747675361.27321.4461884590869632317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a09430c36c92bf1e3ada9ccacc98ef2443693796f5b3f83a8c8ceaefbcd844f
Date: Tue, 21 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737476753
