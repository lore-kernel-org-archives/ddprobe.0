Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B872133987
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734173154; cv=none; b=OtyPhfMsv8RPIzOzO80JTqpSqAB79vjfjQSPkSw9iwkdizqPkXOXq66QSRC3M7lNxkqAP/49wXBWWh0bmz8qbeQ5jNWzwwGHEE6tuNH7ZnSMLFO0QfSBWSyPG6xZE43DRubJ4wDkAgaoFck/tYyY4vppA11pZNEDVpJ1aQznMJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734173154; c=relaxed/simple;
	bh=q0AOuo7KAnjxU75cIavTESgL7/I+T5EdfUxm3rdVYZU=;
	h=To:Subject:From:Message-Id:Date; b=JdZRU9ia9WnNJMCedFXv/WfwOfNvvn5SZzYhXYzANG8PwaF6Cw/mhiaLL2SXwpmJPg5nW9FgZ9M2HkI4OptDgJCbzuxVgIH57BcGNjn0QZEGtkOb0W2QXbX9DZuoV9eEbyfvkEeLy6nKpoMlFd0TWdURPjAFb1X7gJaTrPUZXS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW95S561; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW95S561"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCEC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734173153;
	bh=q0AOuo7KAnjxU75cIavTESgL7/I+T5EdfUxm3rdVYZU=;
	h=To:Subject:From:Date:From;
	b=QW95S561FRlwc3FOQqIwyet4AJv0ulNcm6AmZIidOrMwOe+Xag5sO1SXyjp11DNf9
	 hEGTc0nskiP+jvsVj73x8rsE96GLlx+PZuV1EAtjPs1G8SJXewsHcIkoKh9Wy00qGx
	 3ELMthIGVdYSr3+32V/G12vnjvMi1lBp2+gfYKAugyGL/4oTQSy28sj08oDw055JHt
	 GQaFf4ec7pbpHVbHB6aVBQkjR/UB9uZcLSu5MqEWv2fsU6U6q0wo+QsGYOe35fpXgV
	 0OxZpG/r8NtYZQdpHjNfBO+yYbP1f6RRAjOSBIfyzum6gxt4GHBiAVMlvX3LEEGk+u
	 Lznes4Kw3oucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93067E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417315359.18733.4852641509781954900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7f44e563c4eef279b8e22edf4a6aa1c41fb6795b3fd3854dfaab15a54eb255
Date: Sat, 14 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734173153
