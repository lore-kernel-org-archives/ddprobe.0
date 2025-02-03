Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2375201016
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738585553; cv=none; b=RzBdAtTeFhJlSStj5UJIDILihNbj2ejdk16Xa21mNZEh5FnsmXdXK+B4wHvJevRhREmpwoGzvdBQyy3O2zruyX234NNkObAcNx/vcRJtQXwTob0rrvdPlft007LOcI5rpPzwBANB6CQAsqpNeOLXaURctvaJ6GcW9eC9T+bG3JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738585553; c=relaxed/simple;
	bh=EpTb6IxBJRFNt5QMvfR7m1tvVR0XWTQK8ApdIF358Eg=;
	h=To:Subject:From:Message-Id:Date; b=IunwdoQfTqppuWEdfE99MZ3vPogLEPgVEvM04Ab+Vxij3nC5/mDdQvg/L/a6/kKYrKwdrcnWAsmEeRfh3iL31T+ZA7dONq3wNlJ2IxdMmV7GpNXQe1dnJY1Vfw4YMsTR9Oc2+6hqV5dEilzHNooIYkQOsHnjMbeOGzmRqZHZm90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQRp7//F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQRp7//F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E34C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738585553;
	bh=EpTb6IxBJRFNt5QMvfR7m1tvVR0XWTQK8ApdIF358Eg=;
	h=To:Subject:From:Date:From;
	b=JQRp7//F9D0cxzbOjQx6y7vx2C7sEdHtacZh4J6I6VFWuJwUwnmZP5YZOAt0H9dPM
	 1u82kapo2wJf5X6dNzkB8uNrKeaNLJc0boUUHwtR0RsNQVbSVlR/M0niQUOwUFUdJy
	 gFxKpPa6Yb7Oaye72kVypzwnvM7qp2LRvFJGK4WddytKrCe4JEvJBGcGFqOPrgeNa9
	 8H8fA2tVnN8/TGzsKkmND449Y8bKs3UGW9cw61b++//6maes2tGDjlJ/B1bBhH71tS
	 o4s8VTZMMPtEulIxhA8ijmvDcnJ6BIWlEUAo5TqER2/gqyJT6g6wTanSbgeNMBtK8Y
	 ECCUUvExwYVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B84C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858555359.27999.5005352155272743667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13652e101c07b3d6cf5f4a247fd6728d0bae636ac31f524e48f674471b373e80
Date: Mon, 03 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738585553
