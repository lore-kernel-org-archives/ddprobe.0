Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AC02C21FA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020394; cv=none; b=uEIqzHJpe+41wKaaXMeXlzYHMs3PHqAPOe+kgRVeRTESbRjbBbOa+DslH5hdwrsbL48AllPNA1tIXgxmrYuuaP4c0w4Mdjt2pLuiN3dCdd5ia8Z740ktOn5yFDgG6v7eD17ou0vAMl6/HNDo/kETtPZzsq2uAOdhtg8EDWbvkPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020394; c=relaxed/simple;
	bh=9T1YDjQMSX8Mhxyz8Vyfw89ii0StlA11KWwi0M2QXsg=;
	h=To:Subject:From:Message-Id:Date; b=Gp4LIBG64gZwi6b09riWismNP7s3RhZLx/H8IgNnQ5jzK0m/OYkUJsJ+icB6zmIGjVcw4BV5iPAqudYZ6dczsNYWgXwT1sVyF2Ug2/jbbqHsfYE6UNNcfWkK5c3pNAOTeFPzUgd5ahWOUYbvCvRccvnNirK7/Xs1+M7keqFwm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwSqxD32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwSqxD32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3060C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758020393;
	bh=9T1YDjQMSX8Mhxyz8Vyfw89ii0StlA11KWwi0M2QXsg=;
	h=To:Subject:From:Date:From;
	b=IwSqxD32llf1C0Ivrp2wZiIT4WkljVJU2RD3INDT3dnEzUn+a+8l62IT0yPiwgGFW
	 7KChz9m+TDjsXmTgx7m2LDY7T8Iu/3htT4wypjN0K7wonmHMuse7mhiRaF78yrUqcw
	 uEhP11DMjVTnwByI4I0GvH+/yWTXEV5vuHfBe3SkepFoQvUL0Ehvd7t3BUiydGXCEY
	 mTw+fPg7DPtFaStAl14AwR8ULlTtaCzm6jzLEUniFNZo5fk8BHUJEZ3YF7/AbkX6WL
	 BlWykJvO8vEtaXtL11EG/zxa3rZKuTOB6iMAdh6ulubneQIIU0EjFat13KQTWCpqbb
	 4iJdD8UpxjtRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F6CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802039358.14124.16039521133527661687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ce1c55a49d475e9544e1fc71fb3ebc3c746dab38afbf9fc83f50132a4e8309
Date: Tue, 16 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758020393
