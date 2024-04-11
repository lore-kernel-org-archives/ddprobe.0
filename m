Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0956E13FD66
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712838497; cv=none; b=ED39CSumOReIVFqaD5HJdXz+IcQq/uTB3McPZ+JCb8XDc60w8nbdMESjov2UOoY+jQ9u1Z0piu6Au/SGI2Uvg0mqdzCMuHdvQlRXsxvUeG7igDDM6sXvU5va9/HRK17vWFpP++I4pvmbO7l/JDOae+/0FOtmC+rcOz5ep4Z3mas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712838497; c=relaxed/simple;
	bh=MmzAc4hP89khuZRCq2UpcIUbEx/tCPCpxv5Wl/9NHV0=;
	h=To:Subject:From:Message-Id:Date; b=YaJ+Qr8W48CE4rkP+1UhWAGjuDqK+ZZ1TtSqkjrn6SR1NrLqmO6e4W8nk2SPTHWq7rPOpWJPiSOXo1Nu2731dWp8JmwhnJDz8z9BFcZgvmMy1D3LomQu4kBY338SRkuTYIY+f8CRnaaWUp5A+nemqsiU+bfjo8DClL0230ZckHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4zFo0wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4zFo0wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CB8C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712838496;
	bh=MmzAc4hP89khuZRCq2UpcIUbEx/tCPCpxv5Wl/9NHV0=;
	h=To:Subject:From:Date:From;
	b=h4zFo0wmf7JMLqozsBQJWsC81K9um/7hKuKP0JY1me3SZAMBkdnv0qvkVFxA/yF/Q
	 poxk7Bor9PI9TVljqxWQZA3PnhAw1uEHNZkLhEY5VSYJ+7bkiPfrZouj/tmrc5cv2o
	 Io4jz4asL4jmN6cOygEKGI0/necJnV4ELI7KDM60XGlc4ibymsFAUzwvnZTQst0m37
	 xTOvXSF47Zwg8lBuEbMwPdCvrO/aCSSjxSoCiGZacnBtowrHQ3rWxnZntlLH7xqhFA
	 Lehhtu5FJb8hjFt5I5BZZPsWn4andtoTGiS0AFJ5TQyHgPWs0bFWLerOMC7OY2beP+
	 vO/uT+CziVTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7684CCD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283849647.13578.16821873012343680782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c968bbebd75b341e07e7e1a90472f36c75efb672e1b68fe5b850d15ae752b4db
Date: Thu, 11 Apr 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712838496
