Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D12283FEE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764269574; cv=none; b=gaIKjVvVzHFZIiJKn7aY/xOp5A4gEadfUbzkeTXJhXaovkJtksu/t6YdOReukCGN3YJKDsWg0T/sQ/YgaYWmRPxj5wiYgBFTmySy+0ZpBMk8tHcuAn2EZXiiSG55dYI8GzWd66eVWqpfKrLsLgqBtphor9DNJNtmztBfmAKjvoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764269574; c=relaxed/simple;
	bh=UmEcY8UEVOvT0fH8KOk5H7vrvas4UUVutH6T9sS8xSo=;
	h=To:Subject:From:Message-Id:Date; b=Wf2C2Fe2jUcXwiUH0pfFJ/8bI1RJHXSioM2BvosRiSc/zA7vRhAWQ5F2BpU+0tYy73mAeDWLLJhhHKm/Ec6rviSMTSoLwAhriHBEGdOzpYUL3wSt/Lfgwl3R+UoYVnW4X4Mu3YxBs7FgAPstL4tOqTSaPq+NNUq+ZVKPZI0RGHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS0W5u7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS0W5u7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A27C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764269573;
	bh=UmEcY8UEVOvT0fH8KOk5H7vrvas4UUVutH6T9sS8xSo=;
	h=To:Subject:From:Date:From;
	b=nS0W5u7l2tAn6bNWtaMmZDuiJre8Q5Q1bIS+Xn2yVSCrzGnmhS7jtJxXlXhH0AT76
	 qxgrIsLRfCMb4xOtzZQjiTUROwsPtMt3huZujLPoZdkh9m4zzDfV80yOJO/DCKtCa2
	 9Jie0KXaMdhfr8F4DU5eF8RKUqKUeOfQHUkrnmWtB8eV2a3fkgX99W8HGZ88PixCRl
	 LJ68xtBW+PZ+IW0QeL5VXQ9PY9QBxP2rjvcajOT3ro4ZkXYa1NX5DqzPnqctUuhT5z
	 1JNFQk7HZ+TNQILwZ9F2bcWocO1EKHd+J/7CRiBe9IS9MbKFU/UaBDuC9YwIoLWs/4
	 WODDLg7phgcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDFCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426957358.26381.7162514694535140149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc42700fd0b1b6063d37880563a222212c7aed0258180c0be1dbc02bb0cc172
Date: Thu, 27 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764269573
