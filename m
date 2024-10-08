Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388D21DB37F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728368754; cv=none; b=R/2dwbGMynOto/53MlolvAb28h/GNA6t3TevUcFKz9pIO3XdWFhPSug8RHo+bHy3+sgncd36HlkPP4YQGB/6mwDbhJj1nylaCQz86faR3frQzSIaExCcfLdis3xfZVkyLZgnf8B/1BTIgHye+zMn8mKSpa5Fy9dQKNSOPRlNabc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728368754; c=relaxed/simple;
	bh=9SPvyp0aBgO3SQ4Bed6XkMoL0rjJqvlfxNd7MPHXk3w=;
	h=To:Subject:From:Message-Id:Date; b=plmWSeC1TrZwJXcWBoy+6o9oZN/7xQkK0HtruDY6AyycazH+Qu0zdMslxSg5pfHnfz5WBJ2cxCBbnjH9BckfZsn3YpcNn4+AVp8Psptc9ekhyvxslZBqvs63q5gBaXlxUA8KI25f8qDndl1dvO3LkfA49DeaSZkW3F3/D/A9ZcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auloP1HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auloP1HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9937C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728368753;
	bh=9SPvyp0aBgO3SQ4Bed6XkMoL0rjJqvlfxNd7MPHXk3w=;
	h=To:Subject:From:Date:From;
	b=auloP1HG4E9+9Se8r+FhI4MQ+2moy+r41cdn5sNV+uOGKzxuwZaSlcohX2t49Eau8
	 GoOwqU+EMHLdoWEEJnALaeLigIGKG4Vz1XJIcoPKMV/Y+Z0eqfXjJCYDib4qW0ZvvR
	 2S7qtyrcIqiI/6e2QIKVy0X2+kNA2p8PNFJ3LIQUCxkjcFhEucH57nC6+NAmYpRoc6
	 MG3E/lKGPXbu4XkbI/94UngWvJjHnymwOGdyr8RKHNPhG3usDIKUXY1gxs/NibuS3R
	 RPEh1qWWAlYJxI0R6YYcSiFHXfHiulWtghGlJSyqwV95b3kV92uYdQotrpD96crvt4
	 Tx0Ysfd2vwI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92ECED26E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836875357.24791.3153012371756592937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff48c12813852423fc3644fa880fec105d2031fcda5455932179a65614472fb8
Date: Tue, 08 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728368753
