Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB30D1A9F85
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775972253; cv=none; b=MQsqroVnu3q1zY6MVKm/433Rx0KCC3r5q3FO2cEBYITkAqfCDgdAizuXOGg8MO8WxGvYlJx1eB8vYUNCQYi2hRKszU5MTx9kn8nInr2LTVyYtAxP/Up5KbrC79SgYyW2s6m1Auz75lFCbzC/U/L9ZagkIk4I6WEaC+bEWjLW24Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775972253; c=relaxed/simple;
	bh=ruvs4ICS1ZEE0qhWB35QW9pd8dMhZP9WxCIw87R3e0k=;
	h=To:Subject:From:Message-Id:Date; b=llXu+kslSO8QtjOUZdLc+Y9/6lCKd9gPS89p4dqeOaVklUHutbtYxqjdg2u7Q8NafeHFaPZTxPBPJagtQqStUWNwfASoJt3FcDd6212RiGy8ct3BUzYuIpGvVjs925PUs0U591A1vn1yQYYz+NKhJ9g3hU7xJdLypxQ7hR9nAZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARVql1EX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARVql1EX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD26DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775972253;
	bh=ruvs4ICS1ZEE0qhWB35QW9pd8dMhZP9WxCIw87R3e0k=;
	h=To:Subject:From:Date:From;
	b=ARVql1EXziglMmntjIAEfWvWYp9A2QZig7pbshJOA7tIwbA49lLF8ecyCYbkzXEA0
	 Yyc8e+vFK/ND7feJtm/Q/RpaGisIXzSMg1Gltkv5/+eYUSdASrCY91hFETKl3VoEvQ
	 LllstoqUtbdrkyM1LkfnxfF+FpkeNJujWfhy3olhiSGfbeO4DzdIWhiV81vE+27fKd
	 rKu+VtwuuP5dpj/EoUOfCeRubRIwJSoeF0rgREOx2nuPDGTMTy8UUXMAn9aDh05q19
	 n4ANuQz0+CI1kbRAhR6CxFTWMdA5Q0KOW974kzCyyQFAlaBNdLPmTIaK1CZuPGqPDQ
	 LcpnkCINX15mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B5F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597225368.24653.4298783485436992130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99469e5420b74bb66f96c76fb87736515916bb497e81c0f02c7107bc20bf38a1
Date: Sun, 12 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775972253
