Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6921BF58
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756642794; cv=none; b=lDW40Y9thuEBbKJD5FBJwiZmKz9s2MGI3usJNAcdDR6fyriZ2Q7zNEyRVgmngrLnZjYRFNRCYs7KSJAqxQhp0l0EgLrw/XGbR+XFBzToumwfEdk+6OMO1Z4UxlugVFQmiOruLuGbX58SbdrBiyWBgErAmsUaeaiW9YMNwwt1R6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756642794; c=relaxed/simple;
	bh=GjhVFZMNdmDmMmzcm4gbDmWePcF7fTtoZIemF46qGw0=;
	h=To:Subject:From:Message-Id:Date; b=aknvlbyCSl3D0pqu1BGFwpuFQnbPQ0gtplEMDlXNW/myFVIJhOxMNoyIar1mJEhJE0BIUk4ttqxwOcEMkqAhfXWLfi6+9UJdy7bR3cYEuC6Hwexiaem6o8GkSdHpETna1gBDAA7uJurbjBcji8Gv499wJbIKfjc3+9pzWf94VKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1V/AkON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1V/AkON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC7C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756642793;
	bh=GjhVFZMNdmDmMmzcm4gbDmWePcF7fTtoZIemF46qGw0=;
	h=To:Subject:From:Date:From;
	b=k1V/AkONyO9h0+CMpgl+iKYpyQeI9mB8GGCSm4XcJ09DrfRb7vIX/NBXfrf3BcR7F
	 NEKQ6avuw+FCZQhe6adoAj5HKDdMHW327cwiS1BcTG/O9F3KYMSJfYlP2x/1upAn7u
	 tkqAIIfC39cr39T77PmITt61zh44rt0XOx7E/yXlaVn9TzZN/lDQzk/k7jyJ73YzVL
	 8T+6WnXlJouqQBmNJhYvdsPxDSlySgiJG9B5+EXiXRf/az4Psg40FG19vFIYGUU/bP
	 hWLlBdZo8VXeu0zmDADcEMUiF49icHTS9UCJXTFvKr3soYqLGybY2qD/BTVFTL9vWo
	 H5sHsFUytz97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E75FCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664279357.26255.15540387239986523770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf5e51db479454c9c16f9d94d09ce2564b4669e37e42d029dbda91ed8d409be
Date: Sun, 31 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756642793
