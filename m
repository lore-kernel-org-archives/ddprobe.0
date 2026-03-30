Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB2D1EFFB7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774838694; cv=none; b=dBdHxQgJzOjTD2J9sp7lqypVXkIgJ5rB9VomyiC0UXiAYGJ5l2y4N+9Ny8jlNXd+qIVPCAzR2JruYHVQa5jbN9ZbNZeQKYar6sOsX5JDS3uOi3E+WOp3Vz9CP+93aKpg8Joueci7UdwOEyUyBdIX4gX+y9loD4gRG218pJ6v8oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774838694; c=relaxed/simple;
	bh=AVRs+o7APNdllxe74Kr94ghAsiI9P1sTPQq8EKzti2s=;
	h=To:Subject:From:Message-Id:Date; b=Z5BEl2HEMt778oqZPCRECQO6QY7IZGKX06/eLvzGdByfqCeNzPPyJ6RlCyok7v1Y+RNwXJqhvZbYf46YedHk0jsDzX0zQEHrG985W2ujkSGytN2RbbPKJCQXHw2fK9LKa5AUhETmUUPjM3bHFnphT2sYmmUTJbrBjburRH/WKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8TKVL/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8TKVL/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774838693;
	bh=AVRs+o7APNdllxe74Kr94ghAsiI9P1sTPQq8EKzti2s=;
	h=To:Subject:From:Date:From;
	b=c8TKVL/3yHKRFvuX9o7yv3wH1Hw7o0AhV3wIve+xx9pCD4AT7K01TBOPZ5ggjEHMb
	 0qTzCH4APH2bRRWu3WBYNMzGxVXoJhcKHREHmjqWLCuu/r65uJCxAKPjSDIH+ycxud
	 Qc1s6FPilC8YmawhM9BxP69RBwA/WsN2Bi7Fl3cvH/t1gZkmpf4ae+/WpEdVpwj3J5
	 o/q7iAVcq9IQi6bf/AYlDYjCMpoEMYD1kJiCEh5FhxGtE48XfQuA7x/p2WDZIti0F4
	 1i56iLPECvJhPArgz1X/gX1SrhRv2grsDceOq+uzhUi+nDTTxFzZ4C6t5goXgR5Jpy
	 EQFKUw4nPwO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9498FFF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483869359.28014.13906771563900321765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4874b51a9825dd4ab1e7039cd4cb9ebc7a6549d80f399b13d818b6b42db24c3
Date: Mon, 30 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774838693
