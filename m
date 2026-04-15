Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E227B340
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776260254; cv=none; b=tZZty0A4RmWqy3ynIwtkNFhMfJT/WZExVtY1tTG1ulHRN/kNUVSuAEdT2W4HxKZ2rIniLF/1jkWjbzt1N3PkXyO36xRMR23JPCHbT/i45fm2fJREzD0pmjact94I2gsH1ZkQugjRDBHTfF7lREnhoeOnsGtkYpekmHRn1Vq+5ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776260254; c=relaxed/simple;
	bh=Uk98KVKy9qSjCwUieifs6inKnLjf3d0sHpi/t3g6Olk=;
	h=To:Subject:From:Message-Id:Date; b=rR4w5lr1XeWkOe+sv1cvVMW0daoINcPyJhF8Yfad2OIRDS9uDgW7Med8iQL71hbR/2wDdU3bpYu6Qvmw+kzshGGvMiMsc+pWAYf7MhsWe9mPX5g+j0Ve1dhdytbLoFpoSvsKv2udFuk0TMWzQO0Cqv4Bul4h6OXXYqATNA2MKes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTXmc44l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTXmc44l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC291C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776260253;
	bh=Uk98KVKy9qSjCwUieifs6inKnLjf3d0sHpi/t3g6Olk=;
	h=To:Subject:From:Date:From;
	b=WTXmc44lCp2EXDZW/Q6ufCQsg9Y9LBWQS+gRkIcmgbZ2QZx13sOdulaInv44LO1Pe
	 5+G8Gl8dchAQAdhvHwcigY/m2KPVNcF08HgieHPtz+goQVuLsP7m1WtxEYp6PSCgZw
	 9AU7xq+RAErG9QZ+y4Gnx6Rz0Y92Ijh8zthGKqpNWvsw45FbFbKHKB5aXyhg3vT44L
	 1scMn1s8zSm8Hm2B1rMedlH/sAJtO50P1M4ujr0V/7VGxvuzNXZVXXCiYaMvoWFZEE
	 3xKYoEXwr9b2itlQfRGMJ0NGKIrs9jybi7gFXtRsyEQZofyOq0ivREbFM1wpYzDyGB
	 y/focGHxwRoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C87F419B6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626025374.14072.17491735762827884761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7dcd094df4e32a994a3319db89eea9012442bc1fb7da690370ff7675267c23
Date: Wed, 15 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776260253
