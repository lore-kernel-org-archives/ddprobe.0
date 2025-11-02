Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4342734D38A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762123194; cv=none; b=bdmnZgntGfP25P9Yx1Kk5OfB773lBny5dy0Q/4O5V1uMadga/EIciD6UCKqbsmZKePDUNXKO76oxnONUkxAgQFOTYdQDnFCy/P5emHu6UNHHlwPgMTv8eI/mZ4mxdEQY+qHlH9bIFQR4D44LORu/ghm7HN9meRUzpriBCgjgTzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762123194; c=relaxed/simple;
	bh=I09UQZZ0FrSULJNmXYUmrswk67y3poNfx5gR4ihTIss=;
	h=To:Subject:From:Message-Id:Date; b=TccayOxgoYdXkJRC3Q9ISDn9GzHFULWjjS+epwTYvv5MUkDh2zmBtOhH9K9ZUofMPSFZLWmsiyVV110LRP7b0Z6ytq1243P0z5RhEp8ZkvRAdoaDfjw7LVnl/BN5Ty0pn0eMKFq8/+jxiOt+9I7ivCC2HxdbmPLuKQEoZ+/YRh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXoDeX1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXoDeX1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC29C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762123193;
	bh=I09UQZZ0FrSULJNmXYUmrswk67y3poNfx5gR4ihTIss=;
	h=To:Subject:From:Date:From;
	b=XXoDeX1pefNFakjovHw1LDOd2Wagf5HYjp6w+6NTMULYYINy8m2bdj/ZE/pkYJ18+
	 r5+JcOlQtcGgNZcZv7vvIWDovOhef30GOgm0Ttit+9gCLTZoJfm3ZwqrVgdXNqetoU
	 mQFEuCocPZftVmC21yjN6pjgH+rHm5pEWV1vjMEyY+ZgoM8oPtBuXLyucofTBemNuh
	 kY5YBpD3cD9YQkPSYLbus3ThNahk6IOyDNxXaLhJOIwRz2xF7t4sAPCcI/ztp71LKK
	 4wAyrjIwDEG96M8eKemyFF0y+t5zfhZjYDOSio1nNPoFB+Yg0pPxA/sgmL9S1cDd5M
	 mlxUSTP/glNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B15BCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212319359.14228.14498837146861771799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a5a9fa9292ca5da2ffba7cab6f6e9ee2e33aa8dc071c7f82819e1c6b0b8d1e
Date: Sun, 02 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762123193
