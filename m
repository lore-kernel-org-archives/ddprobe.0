Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7EF74061
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718782163; cv=none; b=ksG4SWZDbFWh1sAUIRW1lIS5crLUFBQbuxNUGLUcPROTTFbsuCCrwUTKZtNelMJ70DHhtdQWUNVc+J6eUguH+0vxuIfei4RFlMe82/Efq5J2b9V91vBvq8wi3v+QmKxKaw8+a1FldjDMo42a3uIKMP3fV+lEV1QSvKN31pDzmzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718782163; c=relaxed/simple;
	bh=/Cc6SFa+oEfFXrRURaHV+YOpLR0mQxod7SI1eR6AEfI=;
	h=To:Subject:From:Message-Id:Date; b=nnYBqD1pdYBzuKGnFbWDgnlDcGuEb4WYB0nKfC9FDXZ2nktai3Q4SVpfQYkUch0x9BxYlTZ4VZsK7LYEZQf0mC+6JwIy0OvvL5Owmi0WiPihZWStAqTfqtlAXxUfaErzhLTRWnerQgbS7VRuzhM3hLtN0HRMgHLhAw/oBWW5UR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8kOUQ3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8kOUQ3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3741C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718782162;
	bh=/Cc6SFa+oEfFXrRURaHV+YOpLR0mQxod7SI1eR6AEfI=;
	h=To:Subject:From:Date:From;
	b=R8kOUQ3S8JvGQdnmfOvIoIon0Ml8n/T3HFkkTSLDoiniF+9QlTq91d+k9OY27Fpxz
	 v/ew/UJOftdshD4VA6H8f2JqXpnIVxqkEMFFDJqMekMU1vkHWcsVqe5loHCzuljIci
	 kRt6o71xvB1oBWnHkyOAMniMdcvtT5mY83AzPKSt/2XOoSycQntIgeU0lVnKtkVRBJ
	 n97+HQl49f8T9+OIXox7ayyhD5ktafGcGYzVJ4Qii7UnxplWWdVeDYgsTJ4LhWRU44
	 5dueNyF4RrPYG2oSTVh39exQcy6tgpMKfYEDV+OuYnIuigsH24EhMI3ClKER4V+unK
	 NS1WJf/oyhK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD391C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878216275.4603.15039903367659733815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb8c58896f47e30a6e3bbd8aec239372d068df1e115702dac943d8a6b989cd7
Date: Wed, 19 Jun 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718782162
