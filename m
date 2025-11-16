Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D2621B195
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763312514; cv=none; b=b7vGmECuO0SIl2SFPrnZr/NabfJZrXrbxEMIxV2NzqomIKQRqs+iyrGRwNNyc+6miCy/z3PZ1eY97XJAu1wo+dz6O47Nu7W9o0YJ20V/fGxcmJHvl09OjZzIzJ6W6ENBMWlAWs4ZAI0APkqNpkTKWaNbojVejPyxltFPWs7Zatk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763312514; c=relaxed/simple;
	bh=Jo+qDMxo54UjHZMs1HOGUI8ctu1MlzrglFd1NN6tvq4=;
	h=To:Subject:From:Message-Id:Date; b=JHAJhm0E3K1L9JD46Iu/MzDO/sBQix32/k6bZHfYVQuVoTaQdLeAM8qjg/QwaJWmNWj+kEr/VE90/kGA8+1NJ8F5ndS22TpeCq1AYevk+AWgFWj4SD6f6dEUtns4oTWazDudGAEJavap5BBP3HyHcrUSIXhlYhc0OmlXQnwMAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+lTZz8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+lTZz8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7E1C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763312513;
	bh=Jo+qDMxo54UjHZMs1HOGUI8ctu1MlzrglFd1NN6tvq4=;
	h=To:Subject:From:Date:From;
	b=c+lTZz8joXFxEsbFTSPqaskJs6mq01iQqGIieC50aDHxI3lduYKp2PQv4x9denhf6
	 jS7j+GbbrqiRK+HLPUAFpK1jjb/cN44qwLeTeqGcniEHbF/I8dUuhdMAzHy/hIdq35
	 ZwesMlcw3zPBb7/Fg2xc1cBMMYA2581VCC/EbbsDcueGfuFxkFNCvGlpG0MuzS9dnm
	 c3wmf1HWHQZ3Q6LKrZsu9oavQgtdIb+qF6MEbpfsuhkziSTyd1AlbqjUFw5V9Et2J6
	 y47rqYmA7VdO0qWlHnR8wxUGQN3lgU008PXZZxcBAhIIoNuim9am5aVCB4hxX2NkdX
	 YfBnzaz/koi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F21CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331251367.5982.14679963355494692377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c067ab8b187110b6e6892e00c8f65df74f0166c392e57020855877a231f9ec8e
Date: Sun, 16 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763312513
