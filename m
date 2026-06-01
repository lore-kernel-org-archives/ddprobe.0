Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAC038F239
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780310674; cv=none; b=TmQeYbQiH4rJg2pQYSP6FTzqzcvu8TTK33eOkF8uH7PqKw0h5/ARs+GkOGR7S/fplz4A1bdtO2cZ34rPhDmiRKOXX4WOMOB1bBt9JZKkOizF7O7Mq9mbRMjwvopb+9AFrL7XE6CT47bNUzpYsJYtjjUQ4u6dsRb5fFcN3phUCpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780310674; c=relaxed/simple;
	bh=nZS00fy67QAOORRIqe6UNQxzZtNZGevEQZiW3zjWAD8=;
	h=To:Subject:From:Message-Id:Date; b=OEeDTLFVBEwaWbOGAffXXyKr+MdKx+MmPTIps0m4X9wyiIBpTS00LGC5kYPIxRUU2dzw3n8//+50O8A8Zx01TEpLjBqsKo+uRYqdKNujxKUAw85Ave4si5A2rRXAXdbZ8RmK8ym1fQPF8HUl9xj1pBsA7i2C9EKWxYk3e0hDUAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu1Rsus/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu1Rsus/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D66C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780310673;
	bh=nZS00fy67QAOORRIqe6UNQxzZtNZGevEQZiW3zjWAD8=;
	h=To:Subject:From:Date:From;
	b=Cu1Rsus/6+6bORq9It7k//k2jb9aU7qpWyhZiM9BGpHen6en1MgVSRNcU5xiAe+/t
	 3zTJzvPIwUzXYjsepn8bQjjpGT+CKDw2Ow9SIVge0+R9eW8iCzJdTD4Fz63Vt8Q2vA
	 ie7zEOc8zMfXJabXLeUmaoqhlpZsFmFmEXEzGu3soD4hSe7dPIWp+ZhKmqMx4TVdum
	 GNrumizf66hxo95Gd9OTd6p24yo+3qw9Z/UTL+MO1oG/pyrXpjJqKwOYR84MF17mLo
	 Jiyi0TXYK8EsSXe2xDivu72GNHTWS47q5wtmW/h3ynTQc+P+eoNdC6s/A8EPkkYesY
	 uK1BceCIHOdAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84ACD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031067369.532.10112330732128600118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3832f8403eda63211abeb1aafa7a8fa840ac41ae1040018ddfedb6c105da6f15
Date: Mon, 01 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780310673
