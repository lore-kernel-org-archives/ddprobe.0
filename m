Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284B1E008B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727826954; cv=none; b=DmRQ6WxELskzPW30C1kn7uzjc16IUQt0K5wdrZCoHM0CvS6nFM8VTlbVzOG5GiPPyGVfXkZirXQHy2gVibRHAoKQJV/oslcJlhLpve1feyiCRMga82iOnrPetf8tLmrWfSEfbSnpcfeExAhfTD+VwbFn6quiaUAGDHYR6pCSiYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727826954; c=relaxed/simple;
	bh=gRSKrH9Seb6CgERQmATav7si7AHGlu5gbZAw/W5zLAs=;
	h=To:Subject:From:Message-Id:Date; b=Ownyn2eJaj0SO1HAx74W1hOTqezAO9UKOfTZuY6+2OY0ybew/Clb3pdANoADPv0Vx+ioZlpHHIhzyROT7MFtLm3Dn2Sh/qMMHN+n9okP2K/YfqFHog21b/fk1z7yHf8pApN7Sd4gts/5uI7OrB7byQouuefzNieHXqyo1gvOixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAYUtpWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAYUtpWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42CCC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727826953;
	bh=gRSKrH9Seb6CgERQmATav7si7AHGlu5gbZAw/W5zLAs=;
	h=To:Subject:From:Date:From;
	b=kAYUtpWIYS7XOYrnwdyja1d74+SSqs+nxxj6sqJHQOccXDywae8wTMc69s7enyKVk
	 QB+NzwTAdfoOWY4AMiIqw4r1A9RnIysEw5hCIxadYeINyGkt0x73hBP+iTFvnKxz/D
	 oHb2GNZE+ljRqGXgfcTIoV6A2VBtWQHAEtqpg3l/cMUf4OhUOhN9sPfM56Ja2kMCrx
	 bZeI1fE5DEElI4Cy+RU74Kc4L9IajUSrfz7FaO7ohy0RxYtzpqUiu6A7aTG4dB9m2p
	 qU9nlgFmPPYB69tJDrufrRxjReL4yFSzIlbfc5kgOeS/uBfu8u33NMlWaxfUB8pceR
	 8WGeAGHCya8ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02ECCF318A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782695362.14585.11191572934156990159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd99fb8bda6f8c2da6cc96b6bae21de2152dcce46b2f9fc6bf1404caf03799e
Date: Tue, 01 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727826953
