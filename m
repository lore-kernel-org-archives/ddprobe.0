Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1FDEBE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714875143; cv=none; b=KQGqzbJmOQOOR6vTka74JlSkVryU0YMy2rtTuf12qodbJUbpnh8jiuly7Zryd1v00lyfIb79p2boBUUNzg3GV+kgK0H4BSpg2L6x4jMkYn379ISFRDWeV4fF50kxKmKG0ek033OJXcoy54Uy1hWXVwmb9Jfr18V8GtimOZZPsPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714875143; c=relaxed/simple;
	bh=/uY7W7O+h52ARFcznVyU8H7Ud4XM8rDVN9GzBCvScq4=;
	h=To:Subject:From:Message-Id:Date; b=UAwnc/RP3OGqFN8f/qiyympvTi9Aa0/9YCvjtYKzwcIekDixs/pdOLYboPrBTciml2iydTqIkGaT3H6nHzjT5aUPpXy/QBs8oRx4CEwwlvsUrQ99Pn0bl+vVQ/OB1gelEv1279HO5FyOPp5QCEEhO22OCp51xYgAH9mC9jdNZOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNWF36x/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNWF36x/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE39C072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714875142;
	bh=/uY7W7O+h52ARFcznVyU8H7Ud4XM8rDVN9GzBCvScq4=;
	h=To:Subject:From:Date:From;
	b=pNWF36x/p4WaB8cikHup8RMJ1Hd8gHE4EWkZgQVhE0K3Tlc5DWKoqTnOWlmbBL3Ll
	 8cpZ7ZLLVNuJFqryZ7gc8VERj8rxBB9iX9vB6wsO7oATb7i68fk6Cqkc/xEY/f0VwM
	 PSHCm69b5Zvc/xhXQm2pAwc2nsBKGn2KbQov+kVrptPPiws2Y4ZzbD9rnsfud2HD3J
	 7Jn30dPE4gxZUgYH17rmtQqyZ5XolLoejP9APD/M5m6Odc/7OGg+sRa6agSOYl924Q
	 L5qGj/VNtiI4IbTKck28UduldubKLIZIyM5yspR6PRpAXaOaw70X2hHJ1SXFFcuRx7
	 J40ZzHFCxvv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98F0C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487514280.31139.16846707713554459283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdac600bfa174b5d875dd32195c232706580dfc7b75975e9e8f9b9100efed58
Date: Sun, 05 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714875142
