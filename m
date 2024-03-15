Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF92B4C8D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710467297; cv=none; b=MVKxJ1IK8ZzsWNkjTC8mtF8XA3qZ+x3nwBnN1CU85FmFlE6QRLkx+lObOtHWiv8lhWJf1ceeaqXoZ7fIlSNV7NwOUDUjtxiGD0XTfaNpnmENLEBUOckmguBMqLywctXJIhvr2+nrbKUjGDJm8Amh5s3TFJkOEwlDsK2O5AboIns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710467297; c=relaxed/simple;
	bh=Vwgl2pUEW4U7bLzVM5moQXADbVssONC0UbMwIT6u19I=;
	h=To:Subject:From:Message-Id:Date; b=bna+gq/ITNdbSmIKI98sKRKh12xx0Kkq39JmlhUOE9IWbIRsDekLgWXAJZ8vjgBJlq5/yS1zrWDa1/4JI6X9DxeKVLl5qdDoyqZASdOD2RNZaXEQvDAD/wyN98BtgeeNHXB4f/w+zLc2mBmNJQHfc42Mqly2zrjNIAFY/gTfi38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G75aHviV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G75aHviV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F58FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710467296;
	bh=Vwgl2pUEW4U7bLzVM5moQXADbVssONC0UbMwIT6u19I=;
	h=To:Subject:From:Date:From;
	b=G75aHviVApDXe3mAEjU3MeFAthUjwxSxTnUjzmfqWKFMxQwqCbbvFaYQf10ncxaxr
	 y07A7zQZTzxOpUf3kWg2JqO+KWIn/uUEnEW++m/OL5lL+jcVDTIHxWNoL6PyffYiPz
	 U3xBjFIOP2zN9Qb6MRrT+wW7odC0Z5ggtP/r92H3SCQrktsqUlUTViA5aQZCwBDVrj
	 ockVC+siVxKndy9rjO7AYrnieMY4JO3Wvi5foB0YId6Bt1+An3fz7dimvv7jFMPoP+
	 ks/1bcacoa9sltQKIesCXT6a/DPNrusR+v+CxJC1F5zZKn6XneF/dZB57vz3IHmCXs
	 MNr8577VlI1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600A7C54E5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171046729638.7748.9383685998375206888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11602a6af32b5b141f4969e5d83a5a99fbf95cbb2a70fe24be220266a3df9afe
Date: Fri, 15 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710467296
