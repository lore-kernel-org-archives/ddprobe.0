Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168AF395AF4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780137814; cv=none; b=qo3emcbf9Ubxnnj8uohjlSIH/bDMXJVezy2b1O4LGjTtG5evNvU5SVKmqfCM9iZ5MzXk5FaghMoV1ivC8AJxkU5YtBxIj1twaDH/Xu17ZD2qnNu1jOFQc7AnhekXSu4IvwqzgS9VbQSLxGTOwwg738WSw0oms9izhWAav0TM+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780137814; c=relaxed/simple;
	bh=d4r3ewwsKCaHq4AqkjF+ZtE1LvJhXPBfz45brjNgpMM=;
	h=To:Subject:From:Message-Id:Date; b=amGboY5Lb7YVaNph3vVejTyRYYCFuAa3sM8ZFK2X2FO1B3aAQicvItKsAAgB5tKk+3yPfugJQEhUFqZWt+vRSUt2BS3I8zkH9789sVtfP/ZrcQj1lLx3yK9hTIgSqFTOJcSExlGTixLTG0noEdB5NpFVpey1iil4DteblU/9SAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp5owJ68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp5owJ68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5031C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780137813;
	bh=d4r3ewwsKCaHq4AqkjF+ZtE1LvJhXPBfz45brjNgpMM=;
	h=To:Subject:From:Date:From;
	b=Mp5owJ68TEzaemL6TAa9kW7jEnxn7UoYVEN2FY8Hx22hFvgR/u537iKfL9w7AExKZ
	 7UYNQYfiDiDX3WBA+8nyxx9cHc9Rez4K1YV4G8wOj55STDz0U9nTZ/vm3lNCgxbxUm
	 OFg/YqwZORubjYB2mmWHnW7ITKf0oDbppOUMccwJ1ZcilOigOn6ei1aw/Fwi4KuTQs
	 dc1RIKMMGod1u+01sdjQKKfLIsANXN1DMLx28i4/riqtkyPR3vcIYZpGa+4dnZCiiq
	 lw9fdf7V6KiTihh5RyCIpOT1dhGE8npw5FJsBe3IlfvUBaHH4hS128zl36xRDcGaSm
	 dHYyEhgTd/fOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D1CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013781368.18077.14827412988620758913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72533fb458539054d92749d71e319cc5768e1ac2d4e1f1358fb14d43b24c0673
Date: Sat, 30 May 2026 10:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780137813
