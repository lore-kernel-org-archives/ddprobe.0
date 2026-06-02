Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444003D6462
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780404874; cv=none; b=UOrmZ1tSl+1BBr/6V3gKhxtnoro+P/UVdvqTak3QV7uw2Cppj4whsybk5IrGnFBkOrFbu9U0YDQJ9odovjLNaZJRnTmxCpwJjWyyp2O0BG6H5ztutaz9WNsMlKjErvc4XZrX7QAfQYsOz5eDnloL78z+5NgFYNj/gmbrzCxmcNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780404874; c=relaxed/simple;
	bh=FVtAXSdRgYGX3rTy0VBQ3HVbwUl+rPyUGxqx/6OUHM0=;
	h=To:Subject:From:Message-Id:Date; b=m7EE3r8cXP93YMq0IhAnMsx93y3UdaVpbuKBJIO4z7MwfCMkTWM0/3pafVXcR7mk6zoe4ZDNkAw/IQeUJ51hmU7eRahCjRsuKs7yFroNVVGOp3ab9AIQPpo02kS1oqcZJ754H3blYSs5xhzR4OOW+c5fd/yaJKCHqnG9krO5hR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuxsQzql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuxsQzql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C154EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780404873;
	bh=FVtAXSdRgYGX3rTy0VBQ3HVbwUl+rPyUGxqx/6OUHM0=;
	h=To:Subject:From:Date:From;
	b=CuxsQzqlOo2iAbFn+Hs8WoyiUxgo/X1zKJJwC2Y/29eiOT2o6XAFF4jnXoZ2g2ifk
	 /BLv6zAUZ5spmOYyM18VqIcwEXbrcnVtdbZ9j7evghiVEG230g3U8B20XTn6GV5sll
	 +4P7SGwrTFuP+iU56jl2ArkyUSiQ1k4234KAi79B4rSJ8FLhFdVD2xV3GNeeoDtqMZ
	 aiXwvJ1FkDBnd6gIPA2x6GdFRfv5ya1lTd+f5JEGl7v4GLZ/NPa1KzoGR78Ie3ps6X
	 JQkZCFfD7QMGommkBfnCXgNg8fXVVjX9PSEwuQG2X3K66MYZU6QU11KMO2d10UrHOH
	 8hd0f3wyu7PBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF1CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040487368.24614.2379093756391375187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38384847a761b4905701ffe9fe5f933e9885a7d7a55aaed3010e75c92abac5d
Date: Tue, 02 Jun 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780404873
