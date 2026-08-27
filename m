Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE819AD90
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787815234; cv=none; b=D0jMEgW+/8raOCU53Pi8snbm9Iqwvtv62GuTcu3r0WJHFKa8Q0HMWtlgljPvY7S1xRGe984XIT79pL2pUQsGfNJUG+ziFE4IfFkvbW82NLL4ARmeCK5LWlSe5sY0qKdYukglpil19KTjbAbbUw3KIP+IAO9Uw5OGnNO1zZtri6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787815234; c=relaxed/simple;
	bh=eXElUDoXnsKblt1ohdrEi8veAEhQYb5PpbXhorjKReA=;
	h=To:Subject:From:Message-Id:Date; b=j98l/XRxLMwl7rgxe5kOpuUjHeEEKx7Tbg/SXEOJGvefVJghlRbN/C5C1Gdw4Vn9pe760J0jru73gBwetxc63F6V31933dkEV88clGKgRsYNPg5kEIoTB8g9EzfVlX7FACW1EHa3ZN8Rvm7Udr0SCGtcDWBr+uTqzn7oMFWR/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jli/Q6MP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jli/Q6MP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEA6C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787815233;
	bh=eXElUDoXnsKblt1ohdrEi8veAEhQYb5PpbXhorjKReA=;
	h=To:Subject:From:Date:From;
	b=Jli/Q6MPkiTQBDvqKxyVeiJsQ2E+fjJe/HzHESPkos8uUvyMO+Ou2lHUgND0uxoAx
	 xgMOnHzq7CmOMLK/0ZqMM1IrLTTTaIWH8+iE5B8eheNx6ksegj9rOE2YHgn38r/I/w
	 IXduHP2e8Bk3NNwaoPnhbNXXcJ7u3PwkEDioUkB3Y9iYFBTf2n5DohIogmiZ1L8n79
	 3VG2eAPBDtcGZV0RJhG4kR1j9W3La7QkQijNVFrKV2Ci8uGiFis6xvbHG6q8OxyICe
	 J+ULz3V6Th24o8dg1dLXaUeFMBkBAdaVFWzXDMbmqv7Z07iSqieAqiyQh6WzcaZaGH
	 2RmPkVwswVV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F1C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781523368.24464.17330372826501263660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb606c1cace2e41abfd8298fed5562e9ac24ebfafda3cf7853423d01a90e13f
Date: Thu, 27 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787815233
