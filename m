Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF12EC548
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759324194; cv=none; b=NFcVOtgJhXCbXPRKrVtsUtDPhWdIPlSLeWyEzd2F8WRDWaTIfz8zEqxmHwvv3ZSAu2UF+gRY/sSUpKqLwxLtZVIfTfa3AtngQdkHdT9c8Hj9Lxbat4SxXBTncz+8jwihas/tNvrDwMFxnV2sSpinMg4K4OaZGzhD6jEvKd1pJ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759324194; c=relaxed/simple;
	bh=mHECXiF65lN587JMzCgIWJNEhg8JVopBuYbfLbfneQk=;
	h=To:Subject:From:Message-Id:Date; b=kVbN80i5l2RrdDoj/q/5RkUo2O/p89Gu+8d1H4Qqyxdz65o+yuNMDijFAVndC3Z68dCRlSlaW7ejW86M86VgAlJOhN/P/L3VcuGxSp3gB5d0e9A6/kZd3kyP8u5cXkNauZ85bYzq7/vSo1jGOHRdw0Nt63Hc7+UKkUTTGVcV228=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDuyv+xA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDuyv+xA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE0C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759324193;
	bh=mHECXiF65lN587JMzCgIWJNEhg8JVopBuYbfLbfneQk=;
	h=To:Subject:From:Date:From;
	b=RDuyv+xAkxqeV0ScyvjkrGSyV4Ssc1Kcs/as/2hIOCcCgGDZQWbxcFB4d+ue3AIZX
	 v2+ZPKBLA8EtKzKZtCs5QZFsfcn2K1Jz+WGs3RB1vBNVm0I2jnZEpsDxzuhbPon3Nr
	 6NUf8BLhUS+l2cpplVvPFjLBiTGclUc6dmudBL/2timEl20q+GLg4IV8OvSDgygvQO
	 ml46CEDISf5tXXndN/wiDGjOTWrfUBCLIgzmLt6pxPbKCQV7oe4beQx5qYLE/B7Bhx
	 TC95MKlJw2yZleMN85vZvVZ5ASilCF7BzConRyycBMywKVRpnrcoBi9bBzVVMflchb
	 zaz+oShDKmzjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CEBCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932419359.4859.15341857121264903640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6823c607bd7e2b04dd4aaf57de9df246e5bfd9a94a184c9d9a43a1e0dbf507a
Date: Wed, 01 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759324193
