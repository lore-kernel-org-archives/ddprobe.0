Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B44B17543
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736111154; cv=none; b=CW8Q7BuiYMB5dsWu+RraV+BjTujSCLgWLzvHpBUJy7CYpZ2Wqt2C+pofq1mwE76BWd+gPtzVAVBEX/uWWN4awsSL6kWlBmjpN3B5jpBbvrFO0nJnk5YQ8h55aMg38qSf6U8H9CLVhsr2q7fpgseu42qT2A3yoAVAbO2uQ5mro20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736111154; c=relaxed/simple;
	bh=iqDnsPWM5/29HGnXL2gQtFj6CKjeiPv5EKUtj0hZqNo=;
	h=To:Subject:From:Message-Id:Date; b=uO36xXHEK5sNz3VZLh13Qy3Y5HZmQxBemmGA+z0fKNlr3T7CK4gY1dAZa4yVkKLYeQwKbN9JlcIefqWiI/MInpwqX2Y2Cugm4AY9mXLvuAUyy9hDHv3m+4NAKEx2t/YrOvOfDbsr+uEs8RlgoJW7vXW8lCgMsvhneGamzKK0iFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzfpgusv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzfpgusv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88EEC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736111153;
	bh=iqDnsPWM5/29HGnXL2gQtFj6CKjeiPv5EKUtj0hZqNo=;
	h=To:Subject:From:Date:From;
	b=nzfpgusvZ0JrH1cNhTi5xUUmmDFAt1e6og0tk538uZwdPRwpwzN9UdpQVtyNXoWj2
	 VJ/rz/uHCbRaTHCAoLQah6fNxRCNW7Oqjllzfqbv3AozJnT9NsPqm1P9fhwIG3u6Pn
	 NfWS/qUjYozNwq8iafAKMzvarqdZNCMHINlixOZnS36ulj9qAEiNB+KbrAQCBwf73p
	 KlNEwQBumHpYNx1xSynRyJalv9hmraQo8JJud7+0XIX18a4k93zRgS3lmP4bngYDZe
	 sfYRVv/x0Da6V6UEQ/5vDaiSkEkkEKi8KOADhcnKmbDDd970ODJ7fdMplKddQ59vly
	 BrWaUDU1Ifk7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542CE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611115357.32653.12579633483955555133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ea04e951cbe2f061af0cadf21b89d1ae462452e40919e21c7cf487448d956c
Date: Sun, 05 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736111153
