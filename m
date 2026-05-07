Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22C2F87B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778174854; cv=none; b=lpu90gPm1/bOYMrXffNObf/+xEDSZmX0AzsKPb97PJun/Ki4gTO/+kJSYyrC8v8WTiH93rXD1FR1Qj2GvpOWZ/WDAQBExvS7ACrJSW4YN6HEDjT/Sxx5hIIJKxdA9O4gTbzMUDRqGgcnFIbOReU9Ti4HW5Gd3cdKx0qSSS5OmC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778174854; c=relaxed/simple;
	bh=uaRyqj0SaORPR7r/jY0FbXkRvc2RHo77VtfQMOPPiy4=;
	h=To:Subject:From:Message-Id:Date; b=LI35fsxH0XD6oaHHYchuWjUQG3g0sJAeNICHrE4+G75NNgA/bOZPJ77VzlzKC69OuZGerPqtjN2V1fmAJhQrW04RAtv+KOtYb56EmEyRHfRhTowGViaQD2RlCe8FABfSKodG4Kj96HaBM3DWkO7VvryVMctAa131cdU9Ts8reNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWyvcXRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWyvcXRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBF9C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778174853;
	bh=uaRyqj0SaORPR7r/jY0FbXkRvc2RHo77VtfQMOPPiy4=;
	h=To:Subject:From:Date:From;
	b=KWyvcXRhNqeuxfVFxJBhrOzxCPqczntLho7wsIgTkow9UJx4LWoqL94bO5RgLESoE
	 yZufIWgHNWbTECfaFYItCAEA1xLqYy+rksxtaUEfHXmrqUWtt7wT+BrQJ0O+uTBaYI
	 zPfONcdnKhWz98zMGHVClNEgY6AmlIIQfX5tNeGp8tjPutKc0BZcxV2MkREz3owf9v
	 kiZcSsgfs9FQhsZMb0OqI7FBrrsy9Pi4IL3dZG4qPgO/BV7XM19oP96jzEliK4dYAo
	 u/bz6BrJmO+Ddn+ACuZzyo0psum7P8rGA76amrut8PaSVgoa0NL83nzDwoRVZK50hu
	 zBojKtGuz2Emg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0AFCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817485369.26791.9270221979969970565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8322a3be00584f63149eddafd9c66624fa1a9d63760afec1d8b12eafd5be15
Date: Thu, 07 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778174853
