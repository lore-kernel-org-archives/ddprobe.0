Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571C04477F3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788515434; cv=none; b=anod0BsR556evuPjv+29tqECwy+Yt+wVHKzFVteHlbKvypMHPnLZ3MNQ5AZ4ZhGvQYsWTn5YXUBZf86eIW+BuH+tbz/TOUd/fGo38YlfkQzWv+FCFHZqX11mp4X74TXYkbnzHL3pCuhrXPKBb0DYG2RDKojBasakmYIIzwXxQ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788515434; c=relaxed/simple;
	bh=pqEqzc8jrmhKvEc+mQv3+6CIW+4YcbwkWGRv6AxuuxM=;
	h=To:Subject:From:Message-Id:Date; b=B68zNrm36E93oFMX4/naLpQebO6ZXPj78xmMK5GEyvJo449lm+xpxReanU4zqdZj0Mm0ByYuuZ3OKEBmNhaHEkqZYo9hfJfnSQDK6r+Gm4TAcwgsxdDfrsid1MwJShEZgXn3+0En+F8yL55U4oZMkBftMq2rr7C6OD555fXei5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keznTEyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keznTEyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE580C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788515433;
	bh=pqEqzc8jrmhKvEc+mQv3+6CIW+4YcbwkWGRv6AxuuxM=;
	h=To:Subject:From:Date:From;
	b=keznTEyGQ7uZ9TYgbr5gqivhqAARZ9yY178BJQYDt7slzeMgZMykBPjnNO0FChIW9
	 IN7aJz4vlsIrsqZ4PhpVKF4aWqRQRNUOqMSsZS8t9QN/NmooGMZ5qdqT2hh7MNqANU
	 Gb6ArB9JOkqPiyZdP6pkhXE92w57KvHReGKk8td3NHGVVDK6o0rf8/tEqJ2LHA5N8S
	 82M6HONqohigBAvStao83JLaYjyh9OsKbvXxlK1apqN1Ciw3v78LleOtmpgZtpThhH
	 Ft0v63BUGQXE3qMdHP9shRb/deOUNeLCB8u1HyF0nZpYPgpRKHsl8kdyNWj7COAveD
	 UpPKrk8Ibm1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC472C79F83
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851543369.14555.3026667198090222102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9df3fca56533e03322f70c232bcf800f86b29f7a34b1378b4f120338f769b3
Date: Fri, 04 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788515433
