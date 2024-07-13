Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F53129CE1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720860623; cv=none; b=FEvcfI6dkblXBQWrP1zNEMqVQVVVywFOMaVjIKVdyO7D891PzaQcbSmwvv//IFTJ9lJ77kX4H9aKcx7BR0kpP4lvBWyzJR0tV0SLlsOvqhpHhwVya89YDd538l8L+363lP9LMaW0s6XxbI7qSitNvEDHIIlQGy967HTF0wYUvjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720860623; c=relaxed/simple;
	bh=hAEFpGE8oVSNpl8XE6KzPkbMkkHaEXlIjq4TGT7ULKc=;
	h=To:Subject:From:Message-Id:Date; b=ulGXR6oB5oUtWeam7slQMwAEDhBHPz2t/LoFvYtUy+lhZAp1zZGTTfIl+os8K8U4POPa5KYn1e1coGMpV/3xATZQ7fygBlCRE0/lnimI8mzoIicwiJfq1ZM7pXHY4mDXEuKQBuoMuGdPfnFD+b18o0f136shYLhWaxX2kel3GFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7SQA0cU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7SQA0cU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4993C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720860622;
	bh=hAEFpGE8oVSNpl8XE6KzPkbMkkHaEXlIjq4TGT7ULKc=;
	h=To:Subject:From:Date:From;
	b=P7SQA0cUlAUVr6m1CLoCNiUzjR5n8AJvoq7d5CReCJ95CO+V7Cd/qGsJm5gycEQKv
	 isrnbnNdGAG0be4b9vMPXc2eN5xw3icfdGJyFVe0oNXBLftyuBclJ/+0oV33RDLqE/
	 2RzBf3aBZlwlT3mE2N7ZFjF5Rnius4Oe2QLCU0e3HO8Me5Z2HOjecmztck/xi8ZETO
	 GK3PsYvTB/jBNwAMI+Nef8GEKTowBXgzWC/Syae3p2rgN7LuXytqqzFzSvfDGRZz1E
	 oGkPDowgJNTc0s/D1h5Mu3req6JVWLHYfMHuevHyK0an9wYLsc3/QraxoYnz0d/VXJ
	 d4f5T6ew/PUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A35C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086062277.10358.919946773399478443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3e19ad46d09fbf1018a2217e87e9fd34d79dae218ef495c9189faf6fccf876
Date: Sat, 13 Jul 2024 08:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720860622
