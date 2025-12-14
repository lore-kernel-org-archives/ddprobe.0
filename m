Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9E1E4AF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765672374; cv=none; b=DIEftgpHNQg6M8eC8zPgx/lBFMibkIMEPtEtmq23MlzFKgL/K2dlL7aEZlx4aMCWaHHtJ12AFfUwN3JqB1/AuiXQHCtFDMtcv2LdmncbJ4YM5LTfvi8uOxBlvDxo8rk0y1Vkf1idpb5c2PCx1Raee/orrHSYF1UhGw10wimvWgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765672374; c=relaxed/simple;
	bh=h6IZvIqTM7lxC7pfOhwoSejSf22uR+Snr8vXJNw8pg8=;
	h=To:Subject:From:Message-Id:Date; b=pbJ7G7Oz82oTpij0MX9hoBL/c+S0VAjMxiI4J1TjchHjVsc2TVQj0yZ3TijrVUA//bGs1dykIyq1TiYVtFxaf6Kowz8DWpfXKYcw75U8d+aaqnfkngwcpQhfHDPJu1j99WJgStWNeenjtlJ6qGtsasxTt8q9dLhoBEZSN4AOQ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE7CRr10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE7CRr10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5799C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765672373;
	bh=h6IZvIqTM7lxC7pfOhwoSejSf22uR+Snr8vXJNw8pg8=;
	h=To:Subject:From:Date:From;
	b=UE7CRr10ftuoB2KEHWEoSVVRd3372pI2v3chIlAJzarnUgXJDKUCHZR/9jp2hWJk+
	 qWrXSUxqEQLL1KMjvpD4AoNVE3ZKuXxT6RH7797eVSRs08gqfN/bTPR2RmHCNY6i7t
	 jwlZitqoSQ+aJZPg7gK75N8IxJ95Mbl9XTu8M/dKYGraew9d25pm171awiT31603uu
	 2AFdNXeN8bhb9J/ExrAxIuA7Nq5bQeqdrX5Mu5nHyFwZGQYepMlEMHK8QNVuLhhPoJ
	 TWmNXZRurKqv1N2EyI1Qu5ATg240fwyy3UMXmlZvbGAECSg30A6NJ/ONULZSJUUeJZ
	 6WjTEssOMSlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C209D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567237361.3744.18324436821385476450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b98d5c3f12b5cabe569c7f3bbafbb99479528cc0180b24000c40c0231550a9a
Date: Sun, 14 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765672373
