Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C344A21
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771117494; cv=none; b=h5RfSIg2+pCvRAcMlTGXDaM/7DNscjyGwacs6pN2zc4XvAAkskXBwTb3v6bRHesw+krn9mxesuue3UM5rUUX+W6RXGplG+G7gNYxe4QhyEv4x6/up1qEoK0pznI3LYg8C6z+UDHqCsDSksOp1/eVRVb8V60VqFWTOERRu5m68Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771117494; c=relaxed/simple;
	bh=YbXgqs6D5PlFfjPAnUW+OBUK6KJ3/aNi47CG5oU95CU=;
	h=To:Subject:From:Message-Id:Date; b=CzlCufwso7Gdwlk/gqjZnAG2/o78w0sbvOEcX1ty+UZQBQ1cFzt5nYEYg7ElqqJJVVh5sbeKrApOn4WavMbdrpgJGl/nYNvoPDxC1pSbVVU6XqGLBLtkZrNl7Za5xknOxnXo1NkL1Jor2uikIFakNsgmDRhEWPGwqlFoZSfOv9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk+FS61I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk+FS61I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63D4C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771117493;
	bh=YbXgqs6D5PlFfjPAnUW+OBUK6KJ3/aNi47CG5oU95CU=;
	h=To:Subject:From:Date:From;
	b=Mk+FS61IzHcaSim8azvdbqOO/S0vmxd3C1CWC+ghrVpQF7jaxadyFskw1uxAHMxoL
	 3ekgZu7DsTCKBS1Jv3JkbllRerjUMUNDayH8YVnw/8IxmAEJwzQ56K/p6YA3oKsWL/
	 LzS9C7DE0dVkjkF2JdPy679t5UKESDqDIVMAqawY8lpD+r6NnDzL1FQ4J5mKaaQnN+
	 J6H6xtJJEjXWuCZZpRmaLYURi5s3JHYKRJYrnuSOinytUqMiBsu3XwL/OuX0+1r46H
	 IF2OUOFQ4wr42q5GF91Is3QOL45VeiyTgWiQcstqekogna+Rg00opFrT4dKR+tkUNb
	 ix56zNEYRw63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA52EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111749364.27884.9967859488516839099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6003a4d9f1cb8e401efa25fc37d8f87574185ef338817567941f5a7ba340d6d8
Date: Sun, 15 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771117493
