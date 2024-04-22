Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542ED163
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713744623; cv=none; b=X9/f1BUfWFWA3mVOEQD3XhSoyvL4TqzmIr566ORyCJe5VNTRtsA30+2gypikhzwtbg/ZtkhplNMYYxuzYyFe5Gl7QPGHSPbDFy+9CcQOdaEvyxGZqzzLsKoglOEf7DIRr1BfGLN6IxCX5U5JSHjGMgh7o9tG5/F8wMgYfeiT/YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713744623; c=relaxed/simple;
	bh=dlVJWoSE7ROZpjz8F/wl6Ms99KrYCBobiibAJp6DNO0=;
	h=To:Subject:From:Message-Id:Date; b=cg43Y1fdkRL/mnV/+1SVYthgd7HqnPboZ8NYEIv1tp/glKjZSHOb8jEjG4izkEn6Q55nl9k2QslSBdlffq1bWs+OsZRQIYZz0O3617K8lu8on5nsZGszvL9e9Q8wIUCVqYMsd2KBey/wExAnYS0a3MJ5PA/OVG7374p+etk0G9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBQqcT9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBQqcT9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7234C113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713744622;
	bh=dlVJWoSE7ROZpjz8F/wl6Ms99KrYCBobiibAJp6DNO0=;
	h=To:Subject:From:Date:From;
	b=JBQqcT9qdlUyxUde5UCQAYfO5t2vV7ZWeNlqdUHzI5sjMQ+/wKLlEXJplAinQC7Yp
	 JhnCxLiDCQ321A21R/4djrbZn+hbOPhZY56GaxcEZJT4Dw9HVwUHtvOZV+gywL5NQJ
	 N6ftkHP9CGCZnggqzuQW4bbd5OIsCFHmsWeiZWsdQeiwjedwgxSZEuoAeClYvn4fCF
	 fQg5lhnzk+S8vKU/15DoEwH6cFI5yeRnsSzJa2wTpRDFVa0Ir7sbZyUBNUO+2mWE3I
	 wg7gtOMblwLd8gdAfQNn3+zOgOZ6841QUaUO3xhZ4+OLoXXOI+FWhg4ZluLdq+OLEi
	 LD+MolW6+/rNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C278BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374462276.5183.12777346954863459876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8932feee7e30f789211b912c68830d697335ff2d826e8d79fe4ffe73f11261
Date: Mon, 22 Apr 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713744622
