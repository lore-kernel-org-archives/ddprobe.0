Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472161D5AC0
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742580594; cv=none; b=Re+y5vX+NM8wBBvsBxsJ2vUaAbv3cCk+OfsOAv/rv7dpyk5p4iqMh/HXOaWhqryFx6xsl2BA57bwue5SPxEwEkUkQMt6aZIrrChsmJ+f1VDf/dE52hP0uZqbYnw3MKyMGsB9d3FmJvKTUB2TwCUo1DuenZtEzbKfymBqVx06qVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742580594; c=relaxed/simple;
	bh=hvqC9WoKhI1vnBrpqA/iaQS1q7QUetA/f8IObd9leQI=;
	h=To:Subject:From:Message-Id:Date; b=BeSmHDSbzqFbaRv+QACqJ07cPYfIF26uIHyWWwf4/PCnwOUCjwGgE7IK8AElTlfF5hr9hum7bq3JzcrgyKiY4M88v3lvC5QP87EJDhr6aSs0dDMf20ayKWuFWAy8BL9twXDmhpxgp0K2oqdxLpB8r57TC3yNA7tFIuAknYnFA30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPWlcZvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPWlcZvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A94C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742580593;
	bh=hvqC9WoKhI1vnBrpqA/iaQS1q7QUetA/f8IObd9leQI=;
	h=To:Subject:From:Date:From;
	b=oPWlcZviwBhdz/VLg/ZfsHsW9Tb6KkEYkHdZbamRT349JMBMJcDqTZiwhpDNEY4dO
	 UGR7bohQFtlNdD2wbOoDB3jN33/yrgXVJVWSZARb9l91aNyuuWGpB+f0Z3whVQgRH4
	 SzPJ/SIH7GcfOYXd7oTh5h0V76PjcPJpNe3zUF9nHEMYTN3kmt/rdmc9wZd7dOcd0m
	 Mh18c6j71NA3FNHveZA9v4cwx5d7eRbIpbwuHIzw0uxwaqwoboIls+rxiZh3eOx2x5
	 JFszvnGZybIgifH1AONBtGu2t633L9LUmv9vdK+KaCsebTdzgr8aTyzqu0B6Hrng1N
	 5eVvi/OZFs1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96084C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258059360.25878.5198931242962288899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41fb1a3998837256da3630d5c2de9f2f733a02aef3b8271f2ae947450156c30
Date: Fri, 21 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742580593
