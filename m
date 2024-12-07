Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4487D17E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733612754; cv=none; b=iZ5iwmmx4kNgP6fHFEEU+EUH7YsspDIKDkw/VIvYj11apQu3xt/JC1wOiN8EMaUbsC2T8DNqllIX9Z3zRF75ETz1rzZpOu2mc499da9EVg8HZv7hjNoRdKmI47sRGKRnLQdkMwe9t6jxrvXrbA0iV2iqma/ruQFLCLs0KYeK8I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733612754; c=relaxed/simple;
	bh=BHf2j6DCIenX7Z+zROUNopm1PiQR6Hwt9EogSjSzs3E=;
	h=To:Subject:From:Message-Id:Date; b=b9as1yDNmdiFJrfWXEWxM9b3xXiQeEOkINyNnLILJXEOZPgOvG0rRuaXGdmxruJ8fT4jmgRmL6EhY0CJGH0cSt6ADHDpQGl2vQVkiZawt6EKWUdP/Te8SQYX7DrWJbBJpaX0Ltacm0+EA6HYHQ90Fa0vTVw3FXgPu0KqdYJe9xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REfefSE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REfefSE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB939C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733612753;
	bh=BHf2j6DCIenX7Z+zROUNopm1PiQR6Hwt9EogSjSzs3E=;
	h=To:Subject:From:Date:From;
	b=REfefSE1Cf6980D2dCX/Hq0RluucC9KHIBi9ASnEe+cmgMOL/62xLlQt6YW8V1yR4
	 wQTowwO2ngz8lj2PDg48H1NaJgBQuP+r7/ffQsVERqVxTcBkHpevHcku+eoMhn7mzp
	 rPSNlgB1PnP5LV8CqdjY537LR7XBd60t8gj4NTMeUs9kmf322c3dZs1/3jx/zOqS6+
	 rjsNEomwKGc7OhZ82lBkG+YvxS6hgM9ocq213z/Y/QoxxD3NrojGhpm4dQ05KIA1in
	 XR9u79gI+yBwr0IQnsdfhdMoTyv4cPY3PmVqKDQ5LEMW0XKJHi5C5CwpR7xJqXktmJ
	 3qW01ag29oLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6771E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361275364.21408.12009711555205223018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5caa30987d3f27331e954d2b31c2ee688a64a4591083a4581b859d2bbd96cc
Date: Sat, 07 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733612753
