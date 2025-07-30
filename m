Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1EC2C9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753890594; cv=none; b=huZhiS4oHSRfNU8SWermgU+eX/w0OQvjMl93vjDVrG0IN5dI7xFnBDESJ1XI6v4vaTMW8/U/pcGcKxeyfA5p0lT6tieQ8muDABCLnNqge8lpQznvOXZpEKNiaegjzFnLWqqfsaV2qqFBAzZGty4lOkznnrpRoFWnnOQUtUefR6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753890594; c=relaxed/simple;
	bh=L+RTqtRaz2vzgx6hKuL/9kul+X0w/AaztLaNzEfz0H4=;
	h=To:Subject:From:Message-Id:Date; b=TauimGUVT9wl1q3vpv28Hy9UAA6yYM14m+lXpK5MSYHoV2/tfSZJu1o5rBqhUv/EjUPJDbYKFintHmnl/pdiHUuY++wOmBI/UKcgcjX6qn5eaHwIfKZg/8h1lMT8FN+vrZ7ApmsOnzdwuqJmP0tzs0phKQDJ0S/Id7eUpVzaVfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJtG1Qab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJtG1Qab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753890593;
	bh=L+RTqtRaz2vzgx6hKuL/9kul+X0w/AaztLaNzEfz0H4=;
	h=To:Subject:From:Date:From;
	b=LJtG1QabToIl3jvWuMTvhguWFhFT3HxICT+at6mo8F4n+ydKz+4L4hdJSitiOMGgX
	 HzR+uTqcqD7eZoAKdCjjoKXEnu24Z1PWGEgi7r4vKF2MZDexxcAzStOE3kJFApTlR5
	 P+wTiLV0P74bl85AU4NRmOwJAbl0fWywH6o33mipAmaTSxjD5w7NURIvEHMUU0OqaQ
	 ifjQF85ANoTIMNf+Zdze+6NQPXVbrUoICVM5ZvOky2wJzLvJEI0XP1FrXuWCvlKB4O
	 UFYNNtE0LQmVqfnYMyoRunZcLbfnm5c9mjm5wwPJVuDPGua0OCwM6ZbWgzVIiC4BcS
	 TGsMDMHxiRpdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E5C87FCC
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389059357.4511.4231944624532382436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e051ae1d24b1b7c67977db94d0163b082d04ce81111faf7cf745b0dcd45d45f0
Date: Wed, 30 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753890593
