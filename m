Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A052AF1B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297794; cv=none; b=dP4BsUh3YOBIBkQhoigMxcISY5KqEJJVEBbYFrYkumQ59QFJ3QdZI/5muQIcpFlJz+43OjknoDZyTCdJZxQ7BQuxh4iJ3is3u1kU+uCadN17cgRzIK/ABu8UuraKZTYBo+BXHNWhLODjMvF/v8FvoxcG6R+zpfQGpFeGbTfHOpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297794; c=relaxed/simple;
	bh=BAa6bEzJjrSDADju+u0tuYSrxwnb53u6TbYFyQ+8HOM=;
	h=To:Subject:From:Message-Id:Date; b=i+IxR5wVBfTwyRYzfPuzf/Jrxrf6wzZrsDjpyoxDgkJfNrYvuzpAjmhromm11MOKstEt4LzYxRcDNC2OfkkinSdJqoAT0TP1ANmyPxvi4QSr7x2SQve387Z8DVaDsXi7r898aM/5zrxF8AFx3OeMf+2AQDiSo9cDJn+HKc6bhj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXVc826j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXVc826j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FE3C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747297793;
	bh=BAa6bEzJjrSDADju+u0tuYSrxwnb53u6TbYFyQ+8HOM=;
	h=To:Subject:From:Date:From;
	b=dXVc826jz5c6VU1NP5I0LT6EKDvFKIYLkRcOdvXK1TZEDNdqZXWPJfxZE1v8C4q/D
	 wcBIOJSZltRK6Av0vobyLPQVGN9CZu/CK5FehhWJ2u1UtjUutVNojFZu4wVoEx6AzW
	 oBZ/XepTWqUeXHL4timVfUL0Mow1Rb+yP4squXN+uVGSSBIAsHbLAyNhKsT1OviroQ
	 Ztv3F/fsElHuNv0cM9jAtF2cEsOiGI8Yd6PQZyGFjwnJlKL6bN23uMdjMEKo+QRqVq
	 YPrUptDyMUIsea7rAHwwrkWw7Y3lXjRGdTP6WIo8QKqZM/S7P+xwMhtj1X0OBphC29
	 hbqd/jlZn5X2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B0DC54755
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729779363.17112.3400991710748587399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5004bb6b3839408642aeeb777d0e4bd9fde392eb1df2284143267f3c5b61e9fd
Date: Thu, 15 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747297793
