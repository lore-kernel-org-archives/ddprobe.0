Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3451C23B617
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752185394; cv=none; b=uPWY0AWr39QQmVUo9jvFnxETNI1F67ZfvyPPi7ha0uYs1FoRDnoypWRovcQPkDkfwhpbx8YEhW8MTSnb6+ffcUrHPyMakm3PGUsAEKmw8XBcBfgO8VNegO8D4n6tK7hySVqSwnfyB+n0jHHJGque1gFHiq4hRhSNpxEMd9ZRkTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752185394; c=relaxed/simple;
	bh=S7UgvFVBbmNxHA6Ly3B8GxCly8nHOn2jbLVBbhOp6aE=;
	h=To:Subject:From:Message-Id:Date; b=Gg+TQPfGLacEx7l6RZ/h4PPWILt7QUZh0edA4nWI2ttYb0ig1wJAbFJhDb6JLAInPJrTf2sKgKzL1fcVSeSmVDII0EyVtXnfZBl7gJVL1dax4pNBt3it/p3NBYUldp27jJ+rkSNAddkJhb5weAUO0zQEoN8ii5w+XzjUIxoJIPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjAH51as; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjAH51as"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C35C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752185393;
	bh=S7UgvFVBbmNxHA6Ly3B8GxCly8nHOn2jbLVBbhOp6aE=;
	h=To:Subject:From:Date:From;
	b=rjAH51asshn6YacOR+prJrXMasf6xulbE/Pq0RdqRTBH7qfSVxSdqJYRIgBTr81bp
	 r5dVb6k3wmyC3fmc/DcAooUCGd7bmFeP8MWJlb62AULlX1u+KFImOMsGIM5TmUoydA
	 efBbyV8WgV1zaFtFZmKFX9I6S9R4T/4ZP1B+RD8Or8gS+gyLNTq8Zy3D78nJFKp1zM
	 Qu5uQzoEQfb0wsj1cHOjWjhPD2kHFP9DJKenSetztCezEhf+PXMssC9r8OUGlF09tn
	 QDbVsqM9yEeYLTuH1PnKCFNhZUXxFBafJQVzLbO+cyKy6Xr3MUIAxhtuecSSiqwVhC
	 HAEvxDGTSxb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4F9C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218539362.6867.1847771580491191167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7395e4cf6d1f8b89077e373746aac5c48b5450b6dc7f4d9a98d75e37f81189e3
Date: Thu, 10 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752185393
