Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C712F32
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746320994; cv=none; b=s2A8uJqR+WCqNivAgcKJXD8G826k1vaqq78TdC54Iv8sahuF/12FSP1VshT5Htw6C6PhssYkmAshHXXsmkcSS+13AGmu0k/MljQ4aDB2a6Cd32J+jiQeQgiHkMItOVQ0jl5R+YUwmfxjbnZRZe6NhgQjFWchdGvgXIUDqlJe+9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746320994; c=relaxed/simple;
	bh=mp9Ac9JdIXVnPvm3PtoxBU6qX9OLGP67FvDQ8Kvg5Kg=;
	h=To:Subject:From:Message-Id:Date; b=VJ+Ua6EQYnjz3qppKCtifVFglyfIhGOzthXLg/oxEFfpJF1lZiDaFyZKZVubIdWilnWjwXKDbAjNpxaQJPi05Flfnev5xlFyxqwwwEH83VZRzWWq8OVNaiGB/TG0rKHknVarOWQdRNfCRMw51OuawpjvlhqFuxxDzlgL9IeeI+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN2XgBKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN2XgBKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746320993;
	bh=mp9Ac9JdIXVnPvm3PtoxBU6qX9OLGP67FvDQ8Kvg5Kg=;
	h=To:Subject:From:Date:From;
	b=qN2XgBKW3l4sJT8JR8B3PU1I94JivlynOIQsfE2QPq/71j5Mkfehg8iyFSkpfCxR9
	 yRURqsz0jeOzsn1n6lDyq6fIErR9V+GYs6NtMrNFblUZtF7HBgph5EhnQ60s3QqJWs
	 Q9CSi3WsLSdAqrkHOltOeoeKyJVcTpp8SzUjlrHT8Q2y0x46ymLxUCfPvZO5E3YzQQ
	 BP21Ej+ThOOmxkxVXwvnnu0EG0psHxxWQYXvyp77MTAJBlwHgbZuudUiMZbCn8paao
	 2orBCZecGkVDXFBvv4ozJ2INlDMNCfSQaN1Oi7uo7Alxjj4yzfaKs7INroE20YmnBa
	 acoJcO2PTvMZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E708C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632099357.20877.13220029830477961110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4252a60871c944134cf2fcfb02db5971eb7819e5671c2c3efdb308460156fab2
Date: Sun, 04 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746320993
