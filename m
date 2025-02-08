Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B92241117
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739043354; cv=none; b=tYXnN8FBQvX0XxKaAur9vPAdYWBwXXpCfuwBfoHHGtdAhNsHjHst7r6VR4Z5U83wKk2bIC+fTErXslXbYFwU7pv834zJ8pdAaSX+pNVkWHl9dWXFAmZV5xbyupeQlm/JfqWAhPVD3JuumuouN/MMrgyUOlDDy4deauKHnTntpYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739043354; c=relaxed/simple;
	bh=0CRiSyH8ihVPJjW2LlFCgWg0l6pcI3satHAswbly+nk=;
	h=To:Subject:From:Message-Id:Date; b=akF5T989BI9MFv90whk8FfjrqdBb7N4vB2BewnVWvFTjcpJITygK3uEPoEAbLlWqQG4MDg5bGWTPsBPlkTIZ5AWKj5+qF96gJqjgxUPM6apHuG+fgQU+OuR2CGgWRGWNl/zMIqz+ZmBVQPl+VLm/agrT2djZ7TbtDAAnaD9pVP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6lxTYY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6lxTYY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B579BC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739043353;
	bh=0CRiSyH8ihVPJjW2LlFCgWg0l6pcI3satHAswbly+nk=;
	h=To:Subject:From:Date:From;
	b=p6lxTYY9jHtRThsd1sYXHHXxNQRNQhlGPp3xYIHkkPr1wd6Gj+g3wkWRkFC1ynOv3
	 rN1l39j4Q7nu7aZtT3lLTQ9FccEA6kfoI1ElZNcC1lHGiwtEbmPjtyYWpdHOquFb+b
	 C2qxc54izqLa5dWKPyWuKwZjC4N2phHfe8eWimBpBOkvmTkQ3Xubl6BvIobDbN2+Bi
	 ODWq3lUFTfzND5wHQVaT2vw51d+H9GLiV4mAHs050kJzi9pkXF6pAD8+R4TVfBZR4e
	 2KaznzlpqUqPKBh0B/fYrIH5s8o4L8WdlSEObPUOlVXh+ia5vBJQsrP2UrDNhw+0W5
	 koqERyculFBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94197C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904335359.28417.6025452425244541495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd73d1207187bcb3af98252de3e5b44abac8d09c40d620d9063f587649b16bfd
Date: Sat, 08 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739043353
