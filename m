Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280FE287265
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770779694; cv=none; b=EOUaSbdrpKEuJYqEuuLYO+sN3bEoNxTwJCAg4B2vBp2bR+DkMadArbRbuBR0GgL37hxmfotdCBxPoBuLphwn/zEBaRGvS6ISHbNLCEaFfXBWdKnd8GiOkmLHHWL29Ft3JGWIz3zTXN7df1elxEDqXNd8yWw1Sx9mBNBbEAqf39c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770779694; c=relaxed/simple;
	bh=+GmrmZYZQrIK83Cn9f/w51vnrpF4xiDgSVWA0CBeUxE=;
	h=To:Subject:From:Message-Id:Date; b=SSGOrKhSa3IsozaO9iZFIeUqXyw7NfQ5ZW5TOvJG3YxtQMVcRDz8Fwnen3HyF2J/HWWpsacERwnQ/KEXzHQm3OyiyXaBgVmUSQuY3JsRmUCjwb9ZA6YImhIKN3GQe8pha8+ZYfFmqTIeqTS02zfcJeT90IkyhqI9HqN8Z44VDoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECbIyLVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECbIyLVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AE4C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770779693;
	bh=+GmrmZYZQrIK83Cn9f/w51vnrpF4xiDgSVWA0CBeUxE=;
	h=To:Subject:From:Date:From;
	b=ECbIyLVEOJvYzqS1cNVW9KqX+12KwnhkbmAeIwdQeH4DkFGi0TSTQEMP7FRUCWk+d
	 AJVer4YcOQx35qV1xZUh2kv7L096NCl9/LBU+Z9ZjLeu5epKwA5+i9BcSr++MvdFqx
	 Wvrb/lne9rGSzp9aohuJGkx2UiZUJxcosHBM4yyya4a1H/rYi3v1Ft7nYKVuX3xPux
	 gx5OHiqKGJnQKGlW4DVzxNQVPta3IQRhqgOi516mdppZX82UomqAxpfj8o56wMzPAx
	 B6R3USOUitmUGdSLKjvLczZSGgjdvcVgiUcmOeLEUOl4OgyVCfCDOVVn5O/OjY45b6
	 5P5yLFIipr+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D51DEB594B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077969363.25675.11858983718522590670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59aa39c6e7642f24ee15fb0ca93b1e4775375df9f08f14a041bbafa9d7770384
Date: Wed, 11 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770779693
