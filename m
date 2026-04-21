Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664740DFD8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776744454; cv=none; b=MizcC+nczPhfj4jh3s/2uGOpTgn6q7vR/MjCF7nQLF8lHhWKVgLpJAE/Phwl3UWGK2hQ/nb9SE6RUpEE648iZx0AkRRaC0X37KOBdO028SrJu77AAlvBt5rPPVGLFuM8P6is2etSjCGP5UAlWLuPZck3X0xM0zuc5y5e0+GZjrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776744454; c=relaxed/simple;
	bh=yDJmltW4/BAxDSh537hTTXFfMmEmEUhIjZseOd6xmnE=;
	h=To:Subject:From:Message-Id:Date; b=kEFcXO9JieokGxDrQUnhwY5M78YGbJ5BJVmIvyNX4OkEIWEcB0MlqWlVkcb5ounH/+vJlFHHdIEpllsUm5tUon77QqX6+YrtDXLLTGSnbtqEzRg6wMEtxqpxiP7EdUtJLP4lgxe9zZPkWJybvXkLIt+koYyuD2bYEaXsJHfvstg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0p8H5HH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0p8H5HH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE4EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776744453;
	bh=yDJmltW4/BAxDSh537hTTXFfMmEmEUhIjZseOd6xmnE=;
	h=To:Subject:From:Date:From;
	b=r0p8H5HH0FyPhFPHUASONxQNAXgUKBErQK8q6krELWOu3AxSpfgQgoWfCnvry9l6I
	 dj9BSbZWVGymh7CIg2URfiSRTacUshmnBjWDDAHXjQSrqrqF2OJr5VLtZey+FRgIBz
	 qUF4qy0bqya6MzHL9Z/fEYdsYKrrhN/AMWyQt1DRbyBsujfQJAtVCJLjQLdYC2KB3b
	 qPn6g9xFnddPtBkvgqRONRfsqvwlOi8nW4xaTf3+Qe0Pr6boD492pLvU09iBZS6Owd
	 F1dYv7Zj0QjudqWv7a7/iJWuWOtqC+B5DVuIH9Rpl59fWpgP4WIAvqBPY6VhooCs7+
	 huRk1UTUNsT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF40CF5A8DE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674445368.4601.15649844403117190764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fd4ec91610e54a4ad5758a104853035cc75fa4d1f6fd8499fe57b7f4d88bae
Date: Tue, 21 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776744453
