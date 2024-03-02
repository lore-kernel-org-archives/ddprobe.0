Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D112017996
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709399296; cv=none; b=QjEUShPcvUblU4GPx4ospMvLW/afZ0UuuWfU7pxv7R7Y+ksfFPclWj6wopMuIGJ3ed32hurOpY7fGjB8Pjr/Ch8WZPvkIdQci02W/LEaeCueHHYZBvB6IN4yQUJ4RRThAJrEzNi6ciLFNDR/jYxnOhy/YQie1Rrtv2LnMKU/RbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709399296; c=relaxed/simple;
	bh=rElTas9Vp3bq0NnHTtE/RyYMDsugxiZOhycFW8iNmhI=;
	h=To:Subject:From:Message-Id:Date; b=s8KP+BQpKiXo6DcxwfyFWWsHUSL/O6rWY/de46bdxpZUfMrQODkMEEamT9xhzbw2Ui4fnMh2Azhr1OV0uhcOXXtjuG4PygXSmfJ5NXvaD4RkFM74YpffvcsnlbyCd5/aTIj2HrCwjR3k/szJ67evMrEMdIuCJc4zJz8Ld2wjxrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSKuo7kX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSKuo7kX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76905C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709399296;
	bh=rElTas9Vp3bq0NnHTtE/RyYMDsugxiZOhycFW8iNmhI=;
	h=To:Subject:From:Date:From;
	b=uSKuo7kXKmK87vG1LgCnHuhIsVkiLqjTnIiVqdMzjDMRc0S8EHK45t+DOucNtql4x
	 fwU7PoGxeWvTnnm15p9UGnJNqEWpLLYedHE1gVdH6zQ3Xs3biQQl3MiwHMo6R4RR1z
	 JISyJN+VyYKkKkhaij2yPC0GMbLjKkcmsdu95/5kHh5bDQv4TslJZh4r9JEQzocyK/
	 jelwMcK3toAzALoZLKi68iXypigErFEnOSXzusHHXitPyjqEbEQEoEXiNAlcdrF4yj
	 rZbGAjfqnqT7fTd4Hx5hmnWKZvmYL9lwSkkgw16dTCtw6I+6sgFnAxp62NKEuVePgH
	 kLNHrbUy5/SuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B1C1C5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170939929636.5217.3466774223448362101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0611e55a882d4cf3437cef7140c8f2ca1ab95824fff33741e23ded68687b986
Date: Sat, 02 Mar 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709399296
