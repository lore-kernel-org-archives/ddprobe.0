Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1676189905
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745294993; cv=none; b=uLp8CwKmEnmsBKfrw9+TbCIkHRbB3C8Wti3lCCtjOaq6GAeArzwc75UpafLh7iAYLYWdg9vaxgetOszXJl9ymHfEdjaAktRhagDapmRQNll7sO8I30gybE1KV9OmcNFZ+UC7Eedzi12ig9DBYL3kLgBUntkOyLWtAsfRwRfs2eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745294993; c=relaxed/simple;
	bh=n4ZbXMRD+oT/+I1oHPVxFwUN/yBgX9S/vQVV6LFFYes=;
	h=To:Subject:From:Message-Id:Date; b=fT2bBC3M2yQOJuCDANO8zW1V1vCRhkuH91EydLRRY0o3jPhz3UZtav4MgJ6yWKMxUspryPYlMVnm5O3mbM3EoUU6Nv3q+VIxvpmwPLTkwjZwVp2ORTCiMORtBc4vUDqFebI+9LGxeUxjvQph57Pgyq9SCOpbpN4Lffr94Wwaz0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrP8DXvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrP8DXvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5309C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745294993;
	bh=n4ZbXMRD+oT/+I1oHPVxFwUN/yBgX9S/vQVV6LFFYes=;
	h=To:Subject:From:Date:From;
	b=hrP8DXvqN8iJvW2zgMeurBC1okZFWUwa6UWA6N2YcKNu3FeqAxzdUjgFmL+bxcfA8
	 QLr0psl62gMLeqmobSYq1Vecy2XcsEmQgIcQ5u8M7Ndl0N/+ofVXuLIwtvr8hvUXme
	 e95juclugMa9AITSlmpU1lACIPeSyAxSZvIU1tE4upsdaAr6DBxPRZ5uUuGdXAGHZu
	 hVdJ9q2SslahW2WfRGLdGJJ7ww2pwQXhV9Yw1db6oYhTVE/wCwW2zKnFDCT/VUHSSg
	 vdEjsn+x3SJj9dYfk0sFJGEY5Et7kr01WDgKIAFKnD4882PX/nx40M1AUnWBAZcAoO
	 RSn4WjRKsysDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB0C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529499358.424.16482046386805192807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d345b538a29db524600d5e1a1f41d66fb7bb2a9781610d78e896db01a69280
Date: Tue, 22 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745294993
