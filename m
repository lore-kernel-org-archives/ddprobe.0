Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC051552FD
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798894; cv=none; b=uogPEmVIeDRiJ9Kb6+gbOQHsFsyK0O/AJuP44k5ku7AjnMo+b5lOK3yXr1da6RMkPMZAQTecAQog7jm1zFoMd0flNTLUmbXJM4yHu1pmrKl5+gjvuaS3KZcZPy1C/vjc7vosIYQ2ez2p1wbYvz6/4JyU9ffSAUYrAL4xuvgYOMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798894; c=relaxed/simple;
	bh=RDD47J89/PwiMwoJxY+muzvA4ik2UctHZNEZyxlLjBw=;
	h=To:Subject:From:Message-Id:Date; b=WkkUtK/WbdWTwVJ1DoRj+344C3G7f33lj8qACW7y3u1+SSkwtrAR0JZq6d0hKEY+YzkrnFieuxYhQNMnp+bLIRJFLuU4wfp8gdamtdwpNeCRscAYljl51+OFEf+OURmWW+pSYiednYdhBui6XUnhd+zPo+rwul24vnXgCXCY+EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhMycH+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhMycH+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9F9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770798893;
	bh=RDD47J89/PwiMwoJxY+muzvA4ik2UctHZNEZyxlLjBw=;
	h=To:Subject:From:Date:From;
	b=VhMycH+/o4hhboUb5LwiojISYnBfW6UbKwpiHwDlIlR8IVIWyXI/Ao1+9HcnTj6iL
	 2Dd/zcNv3RmIL76hZSsbqZanQ04w8lcfri05eLH7XJdeC5fE3rfDDYp7SS31Iod31z
	 Mb0IE6W9OPVE6dRuCZGyaeTTV9p7lwT9S3Yf5kh2tnfS2wJA8Mv123mZMfOikd3Tdj
	 io2aHDP1JRgGtymUEHzvIlzHa4m3zP66u/CQoAyvwTE/GM24wFaz5N+cBvO5VuBPnd
	 2tJUW5v0YIXtYQ0GFcvA0ephmBZrKxXCxryvyBTFynid3/4iLeQ4+n05YZvTJg7ump
	 0cTXcVoUUoRHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24EFEB597B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079889365.27969.9746365814900992496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d02be1d9e5c6e7d497923bf6e285326f061f335c511f36d43262aacdf77911
Date: Wed, 11 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770798893
