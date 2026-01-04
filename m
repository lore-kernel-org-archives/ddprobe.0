Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF627B50F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767564834; cv=none; b=DAOxlg7PE8rZsB2uY09yoqmAoyzRPsy5XJ/fdqR9CaVHqquNtUP3IJJavLTS2o7Juoq4GM2dgUodten88+oHIleSppnLbIC8GcZmMdrInqzI1D3G0q47OU6dG+WECau8gxhuYhyxY5v+wXR0k6kIBR+6U1TydFEh2/+ib0TxIxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767564834; c=relaxed/simple;
	bh=BmDxcUmFcvb1eGdzGN8iw3xT1+gkJeJCA5jFsKk4IXI=;
	h=To:Subject:From:Message-Id:Date; b=vGh6HFVyxMBxgazRfx1/8NRlglDtSkj8rNtWH7B0B0a6CFhpUe3SWD5d+9lYOkEtXhfjSGA9WLaAJUZre/vEtu5BNximrB4FfFrVzQBDF7iV4JVT3JuyZZ59OqpSRJ1ZnxsemI4eqJN5LgtNuK4reUsAYBvv5JYVvUpA5efkTDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWHXwuQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWHXwuQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6637C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767564833;
	bh=BmDxcUmFcvb1eGdzGN8iw3xT1+gkJeJCA5jFsKk4IXI=;
	h=To:Subject:From:Date:From;
	b=OWHXwuQi19Scjruew5Luyz6PTw4zdWqT4ZAmxILyf+hUuw+TOomEPtt4vj3MbNHHi
	 FAaEpUO4Ljme87LOp9o3x9pCdPU9qNtEgjfCM8oisq9J2D94XBx/FTFWQ/LSyWPDyY
	 JsYXwcWnMsQdGewFKdEQzDxDuRAePkMAnaEdoebNhYjGsd81DNkn3DLRsc2TB6xIod
	 IJD2qHB6rma9eUf/6NGLzV8qCZbahf7HKfKhCmAjOAa0IJ2U2QxvdYE1vEuIlb/XZw
	 RRIjUysc9F/VEmtrSeQYYANWuGZlJjS+C7q2RY2yi6T0NKjBK/TkEKTr4+TuYnKD+w
	 u5zBcUmBu7uXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDEC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756483357.22137.2500354526637774837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9086b8db58cc738791dbbda2101cfb6af36e8f7465b3502a0b8f0ea8d091c36
Date: Sun, 04 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767564833
