Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E161C84C0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764625374; cv=none; b=R39CwllUkfFHQ9/qNX/dqd9CDO9nBoCSXcm3I3jv+MxaLVFQP7grDES9eZvbzdhvpf7qMRf/wOo4X0ksEeiwkbZge4kk2OaxAE1/1aOXpsKKjnb6Dky3EUDFDryKW6W8XIKfo9e/mlDStdg+tkJiGk6GDNeEF4fyD2DKCw0QamE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764625374; c=relaxed/simple;
	bh=YBUHgrCm2sUVnY/oOq+DD6ZAQqh1BT06AfKwwEE/skM=;
	h=To:Subject:From:Message-Id:Date; b=p52kNMGKECZegwLv9HMFyj5R9WWNdPq5R4RaD9HTg8hmv3KRzrFRf/UMfeCZJGAaSTUmJ97dD5vtrpfz/YaV6BXqJmuJM30+TIJhpreiUe02tnqp2pRto4sOl9GUKh24bo4Ge4xkXx8nb8gPswYSFEb5OBcetWzwCD0e/5K0nKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbG8zzWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbG8zzWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9157C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764625373;
	bh=YBUHgrCm2sUVnY/oOq+DD6ZAQqh1BT06AfKwwEE/skM=;
	h=To:Subject:From:Date:From;
	b=AbG8zzWFzleYB3v7o4tM/smZBV0pg9wU5Q9rMMSDvb4r15LR1mWQTJPGVeis05lBA
	 47jGQj1xdPcenVtZRn6QjX1PskZTY7ZWwn9gfJcqIRFu/q+iqTyqeC8LpGa4rXwNKP
	 p7oDM+mysQ+KFkUskRueR5W2IN20AdyILF8xLYZv+pImztMv78Kd7iA4lm0oZS076g
	 UrBmPnhSP5y9basa7x5wOeDyTuDqr56jGcImTu8FzXFxy5SQToVaMqvVgyXLV8ap2u
	 oVtSfNJyMSfZUR3lfAxzXaWRTqHU5xZkJQ6UJXV+8Sz1cEfwLWjR+XogywoKOHNm3T
	 eB0jg1/59EG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D54D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462537361.18162.9513401219045444984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea23edaa38eddbe9271865314f6cf71e0aca105c600b65757539399b8f835d9
Date: Mon, 01 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764625373
