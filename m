Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A8320010C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772847294; cv=none; b=c59y7pHQmZNihBmbPad3kzm5vasHeLdMpOJB/3Ot/jqrv66n8J7rQZAHfKa41z1zIq8fOh2cTrUqUNOotknDCK5Ug2AJke9AS9sBWmY8rvLgXOExlujKdPGL2FoDmlQHIYl8ai+8nhMobCqev6hxTdlSC2UkIo73sr+/mUwv0h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772847294; c=relaxed/simple;
	bh=2q8riF5qqXH6nz1vH72lzZt57g55iYSEt7iqmUZw9Jo=;
	h=To:Subject:From:Message-Id:Date; b=CzY727eleLuwXHoktr0Wr/uYL4JAvSmpy0BoUoAg4323Csx+RsI/zWjFBgb51uhqvpyPxkPeZ8zpCunpSgxpbSfRzL8T58mmlAM6BhqXEwh25nvmAmSSG3wHykTRh/C2f3u2Y3gK1J0nOpT8+G9EAEu9M+Nrx1kTrPe+lXArR48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBcmMC0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBcmMC0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772847293;
	bh=2q8riF5qqXH6nz1vH72lzZt57g55iYSEt7iqmUZw9Jo=;
	h=To:Subject:From:Date:From;
	b=XBcmMC0WCaNfswnbdu3n9ks9szXgEffboGA8e92gb/T7ODpTFlC7RnQe+mFIWSGSB
	 XMk7s5xbYIkurbnogaZ5frWaQW5aavo+rfOKe2f1xHqGPyl0ORwlK0HcB8R2H22Bcu
	 SPVWiDBIiURiSWDjDaAInvsUcDeuURS1jsHyvA6ehdLKlShsriNPg9IVM8gpvok3MV
	 /L1hrZCSG9i8MNAYjMSkLoFAJrKpxFJRcTJbTzhAKZctSmufVx5eOzuXvHkbpWU+vW
	 8wDllzGkRWy4QbWceB9ilhjr7CjhSnVthhvxGxaecWtKZnHVOLTL7rzynRW2mERRrm
	 mDm3hH44Hnk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96762FC9EC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284729359.26553.8522834156851098642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5790d25802d52ca868095f8dc4e08ac93be8f5fdcaa2242f4949c5d317ca6b
Date: Sat, 07 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772847293
