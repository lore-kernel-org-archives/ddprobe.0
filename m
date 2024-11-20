Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394412F2A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732145154; cv=none; b=g1lEFAhrKw5DYf4octvMm3TjZAUkWKrhXHKEyv7EfOcQjEsb9+iPdmQiUwxjdLHoQvaryZvthTjE4pZvyPMXwkuAIL+e3FucFLn3dFAr8kQU0Sb8u7KAkCYL7OI+oDn1zZnxJHW5Cpdipv08WSLL5MFWFhWxUCa/n18s5M56kak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732145154; c=relaxed/simple;
	bh=oaZzlQRP3MP/SiXkHvysElzEDpxk6Jf8ZdqDkmZxumg=;
	h=To:Subject:From:Message-Id:Date; b=hAWimheiHBlshzViSDBYcTPEKxW/QhoCsfdRnRfnvpy/Pu59N00xFMGk/v3gbAsd3rGsxU8+Mt5B/7JgLt9t3VSBfeo8TWrrtNwoGW84yM0XP/8J9Gx+PeuePfr7tjuLdoxOk+Ii4yHczJa2fs6wz7fXrgI3VlAJ8nkoZJ8u2gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6XHnVZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6XHnVZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF99C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732145153;
	bh=oaZzlQRP3MP/SiXkHvysElzEDpxk6Jf8ZdqDkmZxumg=;
	h=To:Subject:From:Date:From;
	b=K6XHnVZFCOdth/NLCunu+auHTUj3maZmueNrHbpA0SKUEwk2dbtOAqafC0IgT/BhQ
	 8ojMz3JYkJldMUjzjnMxtxusA1kurgyCNEipqS4waEQvFze3M77jpQ5QPMMRAnUcWw
	 wDi2K6fqF4kfnVVdR/eVSxtgExZi5z7Y+rmwiZTmE9961lRk9tKWmnZ8+8T4Q/VikB
	 2hmMiAHFhzu12phL9kL42mXMFeK/KRtQ8EEfERd9TLI+BW7XHRo1nSgsi2CRBY31G4
	 BVR0VdD8tyOShgeOADtS+e159jBtiNI5naN04C7y7tnYtq9JFimDESXCq7bluyqQSd
	 ++7qetzpbW1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA2D743EF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214515360.951.14461307556193232311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b80a0e0e8ddf4d4eb532c35a0eed203391236bea9a9b3bcdcceb9c30503a70
Date: Wed, 20 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732145153
