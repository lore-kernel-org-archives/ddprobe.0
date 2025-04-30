Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317EB2AEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746051594; cv=none; b=ISIYyaPE30XAHE1xsDz4r3MHXIy04S/LkHZeIQQp04Y2INUayMhhbYbpIzCk8GC8lZvPKGEyT56V/DE6We3MwklmLRZ1+eMhTOzs99Wd2Uu7K3UGY43yicbruQfqDpeOrcT5bdbbDX0pBqfXG0RVikOW+cuma0N6IDN9RWpDY4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746051594; c=relaxed/simple;
	bh=rfyQQ3ba754EO/KdmpiETzO6kd+JQfD9eYAY876OIr8=;
	h=To:Subject:From:Message-Id:Date; b=ONjUHSTK3Brkr9/H3A0SQNbVRH1mByNIf0zWr6/deF7vRcmgKvMlNhEu9V7Gck5X2EoJLW2bTNNvrAZn0zSObpLQDgCx/rej/5nta87mlvo2raDphIib/WHDZylYZZFtP/0R3esWPAXWObV/MkWagNG3fowE1FCqytAkIWWT4B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiQBD0UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiQBD0UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFCAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746051593;
	bh=rfyQQ3ba754EO/KdmpiETzO6kd+JQfD9eYAY876OIr8=;
	h=To:Subject:From:Date:From;
	b=IiQBD0UNFecMVz8L7lDMmsckSz/slQe5ItgTi1MYtNYScGkSNwEcOx8nlo6NrLTio
	 ZftbpcC6j1IHVKsltnw4iwaJWURUo27z5DwGXAGrbzUbIMGV5c1dkvmvt6z8XoHpeU
	 vkpCxFhLnKv6bzef58wmbIMoAE1XuKQvt/lyYqd3ECNvpRha5WkYkf1AEtZitUVN3/
	 CZntI3fhvyDcbI7JSRs50y3zVUP1M3rNtvVFsGi7WgeXpcTECI48nissdQGeDd0ti5
	 nRkkqfsQFbdeMga9+COKm2hjufE3lvuBqpy8hJzwgZy/1ERdaBa6G2Lw4dYoLl708w
	 mc+U9jPAM6JVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDA0C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605159357.11959.11720804720307410346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21eaa40ec4346156d9b45786f74fa28f8ae8f3cd7dcbff3edb9f692dade0b2bf
Date: Wed, 30 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746051593
