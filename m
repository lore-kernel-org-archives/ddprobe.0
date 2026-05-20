Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE8D3E022A
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779286834; cv=none; b=ZmWYY3Dn/JNcd+dc+Gb/99OAY1+4gQiSjAipnjSvYw+pHh4X0dlPcIbkUo2lEZKsLahbSLmJxcPY01BM19JxsGPu86dd61BH8HZzUlcJKrRg9UOyQSXMcFnKzYu7GwVMOsnHa5JQmOPoMrWgacZTkCrGGKsL6hsnonLo+6YUsJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779286834; c=relaxed/simple;
	bh=gq4S5cUrklBhmI+rCD8AqocVNgNp4ztJVcmUsoRQu1o=;
	h=To:Subject:From:Message-Id:Date; b=cf+6WE+HC/ZJ4ZJswvUKieFL0OtKjxB2h4ZjAtrk8LOH0azoQJHeAr5eClArzS4GUBvKWXR2tHYraJGMgTPIsuPi8OX6GcK/okg2DYNMm97x0B8U535Rt+xJVeD83sxegbGEw+++ggMElKzVSkLahJQVEWEoSkRaLkFB0yQUq4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnJYidwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnJYidwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C32C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779286833;
	bh=gq4S5cUrklBhmI+rCD8AqocVNgNp4ztJVcmUsoRQu1o=;
	h=To:Subject:From:Date:From;
	b=rnJYidwLg5+Gb1xTy6LUL0zENBFbtomdrUnLH0OMYOjyX6OMprP026DFqUMOqQYPV
	 lkOyV19e4gOBYFNNQifH15AzesETCSotqV5bg466l5kHDwjUQscSz+kOa0AIfrzRaD
	 6SnviuMyZGIAEgA5HPN9lnumawz+IDDiWNQICmCQzih7/ZWo/0FRW9zv3Rr8KSSynF
	 w/iUhD8PxVQYIZgyGR61R2c3hB7ndpw3frhCVTjC0S94bZ7wAPKhnM/teV/tOjWgfA
	 NGX4WKAWi9E+fNICcm+R2JTy+4FnBhYGz/FIrI/8oGfxnEaMe5ZC7ps/okdoBEnCEG
	 kb4H8CGoQE2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC050CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928683369.20848.16669129210768897239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861fe988c1a13800931b9d886d1bb26f525bf4221f98515bbae2ba01943147c4
Date: Wed, 20 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779286833
