Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3680C139E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735990554; cv=none; b=FkU4rTo5u6G2pkqzNFxWcoELT/oiMpJg/54OtgnbvSYy6/W5cuxrmrZLUqaH8sX5QB+aiiVEuuCeo8TBcmLARaAr/HMYBaqQpWXIjuxpIxisIADCfI2w8UDnN8zcEmMPR54+sQ9xbF+U8bO5dFHielvY3OaaRSTfO2Zu9hAmegQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735990554; c=relaxed/simple;
	bh=Xdkr/qS0PYyB/w+Pa05oD3qMfCRq1n81dpG5GRaO+hU=;
	h=To:Subject:From:Message-Id:Date; b=TYymo8cQblPhIdwWBce9nt7duUIm0YNEJi5wsS6/sTEhD03HqD8BYVaIYAP6Jaz0xZepFf+wGPbylaf85c/Lk2Pvvd0xWySgxVYEZ5pZXhGV7xnu6x2FwZi1UQNopLoia13Shcck6rJuewf/Olr+9nbOCFYFRd4E6pvrSgc6VpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJWkz2dK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJWkz2dK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD952C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735990553;
	bh=Xdkr/qS0PYyB/w+Pa05oD3qMfCRq1n81dpG5GRaO+hU=;
	h=To:Subject:From:Date:From;
	b=uJWkz2dKvfp10C376Ivb00/I7z2ogFH6ftJdzyKWqdpEhG4dTi7PhVMS2yeM+i2os
	 M14F/YhRu/2SvOxxk5w76uj9CQUuu7mw78ZasQvqP4ZT4jeCqUhs9gFU0dzoV0EhwE
	 k6ATBABKkk6/GM7uAtIc2tmWlrZtV4uI6DwZvTrVQwhTLooyC/N4x5URx2tNjxqBue
	 /UT/SzjRfcT0w+a133aatpDuRmIW46FvhKZIh/QWJ03eQefN/HpWqKHL/u88T7O8KJ
	 +RzeUsa+sABLwSUwh6NVxAp4nqfVMrF7JL5AHAt9WX+y7F28ipHxh1B8gmYqTA1rb7
	 to6QEeaIXx2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42E2E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599055360.14694.13889658989786643316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9561db3f8e9d7478d61f9113642c665cea41e344f51c9b347ed013e10c36c92d
Date: Sat, 04 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735990553
