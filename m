Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261541D26E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729122354; cv=none; b=RgpM5k1XnvlFJQVZ740x8Ukn8KLDC7HFJW6/4g7YpQ9CJu2M8pir2OhrX7SY99UCIQ6LzCrlaKUdO8l2GHck657IQcU0k2+awt5G31rPEM8lXWEjtrdoAqWb4SZUAd5N584jmZ6n7781kZgg31t26TnHsx8IMN+A+qDqnI2dDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729122354; c=relaxed/simple;
	bh=ZMpHKapMf5WcqBz5jR2Jvoe3Dz0fWEsL0zFymy/nAU0=;
	h=To:Subject:From:Message-Id:Date; b=FgW9WGXyyn8XM0R6IQlOMNyzratQnZalt6bKE0lFlKjf+3FC+WymvRCb9u8O0Jdty0PhKFoSE1AqGUHQ7ZlabXhZUSWzyZ9279gqaMqza58s6HXsZSt2qMwMR40pzmkg6GzQ5OCjky5uVaCctgRBtjjkdefJI/e74SEzUfDFPnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/p3ZFjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/p3ZFjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E4CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729122353;
	bh=ZMpHKapMf5WcqBz5jR2Jvoe3Dz0fWEsL0zFymy/nAU0=;
	h=To:Subject:From:Date:From;
	b=C/p3ZFjyXlt60JNTG80ESjrODYa6m0/namd2OEOx2jKswkfH0dypv+tnobIwZFZCo
	 yLAVxcQPNvKKegRZT/oo42wt0WuOKadSVUWolfcBLCoem7JlUrYuWN2vzVzRUsOIaj
	 YsiUmoKV8LpcF6jJ4R8RYFX4XR+FqDUMRnmOZm9VjzeRbJG0Nx7l+mPg8u05wA9S0C
	 ChPjwhOzfen/a9s0npNeMJTgDV5JbXezvFXirVg5esbYUreYUbCx6jw3MFe06J2dh8
	 Lj7pcSQ3OeK+TWDR6T4qY5rFTesO53x30sH5NOOmUxaAvTZa+8WeHyJmvvSL1Mg5zm
	 cIPChXYhbIx8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E84D2F7D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912235359.31189.7990362998906270963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f9de994eaed993b8ca3abae468a054dfe0efd703c08176e5f072db83871f9f
Date: Wed, 16 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729122353
