Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7E1138E
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727830554; cv=none; b=eNHakd5Jv8mVWlj1rLw9XVGtnpubJSFi4f03PbYO9TXKVa6oDdmhkVl4lMckByjwjVoNDZkLdfma6z4whKIwAyYEomZfHf5TPlXOHLMLYtrpn/IZLcb7l6Z0+pWvhDhaAjBJ2Nh6xP3LCxXy/GE/pr10AaAFNQG2udhDbN3aHVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727830554; c=relaxed/simple;
	bh=0yzDYSLTR73iJ0seLQZ16io5lHc2ffZTF1cc1wevaPU=;
	h=To:Subject:From:Message-Id:Date; b=EK6YkIS2ycFOsPTyIm9MCgxhD0FJEWwT4AJPirSZwrlCz/F+5sQdkFFSFjqsh5H67P61jhd8a2Zmg2+Ytzs4JmG/UWKoqJEyBDtrwTusNrIv2zMDhTSoJNmLHevnCsemEg7PeZaS2XmiQNLy526R6kpzHgkXe5iFi+eznEkYCuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlFUeSrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlFUeSrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0250C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727830553;
	bh=0yzDYSLTR73iJ0seLQZ16io5lHc2ffZTF1cc1wevaPU=;
	h=To:Subject:From:Date:From;
	b=nlFUeSrn8+7HJ8mHpQ0h3DFX0yyQ1kBoMqho5oPCfzW30WPg9G9Sa8iU522Y/lETQ
	 K36MyA6/2RrF3yFJFa73BY+HSwnmGjLBnFQDB11F+JRRkzLNsPiVsSHIwt5OaK7tsu
	 WVl/gp7w8XAK/7SnzIYr14zTxgjAR7waQm/b7gNJch2lQhqcTs80NmOvyZjbGZ7z7J
	 jMY0XrYH6PnyHJEjLkW4fyHVieolD6yLo2uMzVYMNPI5AMP3XCWcuUPrG/wsDmWfaf
	 347eC0XXgo2zXMR+Fz/coTINGI/Ap+e1TPkXfP4a2ovZ1sIgrkqaYrugMp6kKF6v5Z
	 DqNVpqPsWx6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD63CCF3189
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783055366.30536.147608770104580510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d36eed8be8e01a6faa5df7ef55b84f34944af3fde13b252171b2653c7747dd
Date: Wed, 02 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727830553
