Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283FAEEDE
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735490754; cv=none; b=TexxhbYhM47kdbSUlMWyUEGyCUU5oaI2zqsO4sATlVqWVcTmoMKXFgoZlmKvLQb1IL4Saf+/CJDOn1iTDEB0RpiUDEpybbeskkdtUcr5faAeL96BCWPiFz7X1B68/25DGd26zYFGVA5lgRDrNbkVlvIQBpxzWDLsclog+81CTLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735490754; c=relaxed/simple;
	bh=YeQuLCglCKuFvW0nP8ecMYtwnjSY2cpORfVBbWuGZmk=;
	h=To:Subject:From:Message-Id:Date; b=bpPuAzRIS77qgSJrVZd6EgG7SL1xwIWSdIh36SSTFqa+pCaWzZE1n2tR6pCBFsDIhMlPzqdtL5aoMPTb8+MZgtHD6u2wwwnGk+vNpyjrgvRjA/MV7mEQAOxZq9bMfA3TxwsLCL4utXIN+muLrFUkJIjaLb15PuQ6YVBHLiXdmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQf+bAgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQf+bAgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08EAC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735490753;
	bh=YeQuLCglCKuFvW0nP8ecMYtwnjSY2cpORfVBbWuGZmk=;
	h=To:Subject:From:Date:From;
	b=BQf+bAgXnySd4JE085vqMSJgu9sttAhG3appILKcFEQ80x7fp5k09iRwboxAdJY2R
	 GcNR/4fnwTz00FXrg1UzQQw4WZ3jBnmaal+LCrp7o4fzd7rfLgyOeVVhyH2cXVE0nO
	 o37R4o3+H87lK9UBWuN1zkvJza9GxWd9XgyqX/tCi91sLRPeI8Nqw9UgMqI4bzBQz1
	 SqZZTYgbKgcfZgP5YQlhJu0D3AvIypfoLWB9mNviKV8bPqAUDryg3thclqmHMB1zHS
	 RxVAR7pI6HBC0D1+8ItmwzRBa+GTqXdYhs6XTUNEAyDHZZp7sDCu85sJPfPiOxamlx
	 pHHGAX09M4Wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABC7E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549075360.491.5422700499945320359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752cb9b4f90458f9515928558c269e9d8089d33752f1862a110ad4a3cf05671c
Date: Sun, 29 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735490753
