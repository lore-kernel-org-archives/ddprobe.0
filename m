Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3666E1531DB
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735241154; cv=none; b=JbCJkkGOoZ2NEefO5maFLfUFS95kct/09e/IuB0lfNuWkbezhcwJpluycDZ73flW+EOVLK6FnW+uR7cXZmQfuWlTSRhbvP/RDtmQj5n3/QkUR2lYi/bTlQ9IGxpYT38vEz54N4wXjSwcjQx0b4ZIn2r5XP3suMTyOZl7YWsOOz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735241154; c=relaxed/simple;
	bh=2QPGjWdmpylEyKiu9jcA+OUHF4sUZfNR9UEN3AWO6JI=;
	h=To:Subject:From:Message-Id:Date; b=INHgM8QGM9vHGKMEonUwNeABCZJjGWSFYWiJll4Cvpyglf7vpo/mNgfMVH1BwDelEz7dkzT2t0+sIIRZq3N7ASKMBFvkvU0cRvWtO3aYg7Emqmx6tGzc8neZdWz1xsy7C0mgjgztBvl0LwnTh1M23r0vtyGGlGFBx2AoVmGc8Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a//gt9mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a//gt9mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4CDC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735241153;
	bh=2QPGjWdmpylEyKiu9jcA+OUHF4sUZfNR9UEN3AWO6JI=;
	h=To:Subject:From:Date:From;
	b=a//gt9mXxHQL1JoPwGUjDcIeGN0mm8iPbeomkpDeAa9vacELQTm83+7c2QR5X0hHy
	 VfEr2/cknkc9pJqwTolc1CzaRUwkZxHyKbYsQ4zK5wYHKz8ABWNab0d7XfO8bskGsf
	 8MS+P6ChGMzGqHFKelFRicKOl8RZ/Hhs711S1nMQypE2z0ooLIvgD2dj2QzImlQLM8
	 dOD1eqP3N6N2GmcbPCAEy/cfghCoJ/YLn+6oqfVQ/o9Hzsrvip8PxSl9tvP0cnGfbR
	 G4Mn6ERFm17dCuxm+oh+XK/lKJCMHwPNKH6a9tKP2N09JAO7S4Im4tsHqp1JV5vVWf
	 e67iXk86Det1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4B3E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524115363.13103.9324885967303058219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f80511a6ba97f6146e4a70af5b68d1ac2719332b0d7bce21ecc1b3f5507a0fa
Date: Thu, 26 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735241153
