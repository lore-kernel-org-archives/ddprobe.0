Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE943AC1C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743914394; cv=none; b=ajjoCBpS3r9LIsw0NlP2qePlvNGsJaEOGtEItVC8VUo8PWu8qx2n34J9Ugz0oxzkDQQU0z4gR2Cxlk/EEBqfgK+6oIeqyDokuO1iLSJDphvwpVY6iXsAiNcSM0bsVCOFKnV7N3evBEN2ZPrG/1tic0SRYexho3z08R2AUQbPOkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743914394; c=relaxed/simple;
	bh=l0EmSyqjsthIAOYYYMEHXUDki7yt2P99LshS5Kyf47M=;
	h=To:Subject:From:Message-Id:Date; b=fwvciLJ0TgsaDCdPN5eWBqjo88flxZihewa+CkE05JOmQSRLXOaew/RZUEXKKbwWTjgWfBrE7KhOzi4l3MnN9nn4cs3PZ+MMFSp54fOawfpHBzZAIMfXYq9QVZn+ndD53vzAUfOzQxKhVsHHL9M4yh5uGxnM93Bp0FVowQl59Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyJDhBfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyJDhBfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF60C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743914393;
	bh=l0EmSyqjsthIAOYYYMEHXUDki7yt2P99LshS5Kyf47M=;
	h=To:Subject:From:Date:From;
	b=KyJDhBfn80TLKJKNFHPLGN0eXDevpYNxP1RDrV65zudTbM/TOwobX1MxSYmZTY10/
	 +Yo8FA2UGxtBmwztAqsYRDMOh5ksNWnx3a9loQKwrnxboGwdiznvqj7ZL8f/fOD94L
	 7/qGrvxzfrzc7tSeUockeVtoCHxJ6z2mV75JSfjo8Kpwq9+h4b5xSChhfv/IVbvoty
	 4AqylAmu5t7iFNtOanvLuV9OKF7TRD8qJGLtM2LTSwx/UuymQ/rnHsSZmV2gYP5HQi
	 6cG+ERqX7zfV8pzy1oWmEKbQP30tOQiNg9T8ZakcwRbu1LGMEmoS3UIbjB1o/1VNE1
	 9UgI1AJWcmGNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4452C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391439364.6442.7928508518617925297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af8a0c03fe725513d5fd565d4348a5df5c28a84bfd20e03cdd3f722501d4391
Date: Sun, 06 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743914393
